import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/proposals_filter_extension.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:hypha_wallet/ui/profile/usecases/fetch_profile_use_case.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_proposals_bloc.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/get_proposals_use_case_input.dart';
import 'package:hypha_wallet/ui/proposals/list/usecases/get_proposals_use_case.dart';

part 'proposals_bloc.freezed.dart';
part 'proposals_event.dart';
part 'proposals_state.dart';

class ProposalsBloc extends Bloc<ProposalsEvent, ProposalsState> {
  final GetProposalsUseCase _getProposalsUseCase;
  final FetchProfileUseCase _fetchProfileUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  ProposalsBloc(this._getProposalsUseCase, this._fetchProfileUseCase, this._errorHandlerManager) : super(const ProposalsState()) {
    on<_Initial>(_initial);
    on<_Load>(_loadProposalsForEvent);
  }

  List<DaoData> daos = [];
  FilterStatus filterStatus = FilterStatus.active;
  /// This value can be modified based on your preferences
  final int first = 10;
  late int offset;

  Future<void> _initial(_Initial event, Emitter<ProposalsState> emit) async {
    if (!event.refresh) {
      emit(state.copyWith(pageState: PageState.loading));
      filterStatus = event.filterStatus;
    }

    await _fetchDaos(event, emit);
  }

  Future<void> _fetchDaos(_Initial event, Emitter<ProposalsState> emit) async {
    final Result<ProfileData, HyphaError> profileResult = await _fetchProfileUseCase.run();

    if (profileResult.isValue && profileResult.asValue!.value.daos.isNotEmpty) {
      daos = profileResult.asValue!.value.daos;

      await _loadProposalsForEvent(event, emit);
    } else {
      final HyphaError error = profileResult.isError ? profileResult.asError!.error : HyphaError.api('Failed to retrieve DAOs');
      await _errorHandlerManager.handlerError(error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  Future<void> _loadProposalsForEvent(dynamic event, Emitter<ProposalsState> emit) async {
    offset = event is _Initial ? 0 : offset + first;

    final List<DaoData> selectedDaos = (GetIt.instance<FilterProposalsBloc>().selectedDaoIds != null && event is _Load)
        ? daos.where((dao) => GetIt.instance<FilterProposalsBloc>().selectedDaoIds!.contains(dao.docId)).toList()
        : daos;

    await _fetchAndEmitProposals(event, emit, selectedDaos, 0);
  }

  Future<void> _fetchAndEmitProposals(dynamic event, Emitter<ProposalsState> emit, List<DaoData> selectedDaos, int retryCounter) async {
    final Result<List<ProposalModel>, HyphaError> proposalsResult = await _getProposalsUseCase.run(GetProposalsUseCaseInput(selectedDaos, filterStatus, first, offset));

    if (proposalsResult.isValue) {
      final List<ProposalModel> proposals = event is _Initial ? proposalsResult.asValue!.value : state.proposals + proposalsResult.asValue!.value;

      final List<int> daoIds = GetIt.instance<FilterProposalsBloc>().selectedDaoIds ?? daos.map((DaoData dao) => dao.docId).toList();
      if (retryCounter < 3 && proposalsResult.asValue!.value.filterByDao(daoIds).isEmpty) {
        offset += first;
        retryCounter ++;
        await _fetchAndEmitProposals(event, emit, selectedDaos, retryCounter);
      } else {
        emit(state.copyWith(pageState: PageState.success, proposals: proposals));

        if(event is _Load) {
          event.callBack;
        }
      }
    } else {
      await _errorHandlerManager.handlerError(proposalsResult.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}
