import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:hypha_wallet/ui/profile/usecases/fetch_profile_use_case.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/dao_proposal_count_entity.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';
import 'package:hypha_wallet/ui/proposals/filter/usecases/aggregate_dao_proposal_counts_use_case.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';

part 'page_command.dart';
part 'filter_proposals_bloc.freezed.dart';
part 'filter_proposals_event.dart';
part 'filter_proposals_state.dart';

class FilterProposalsBloc extends Bloc<FilterProposalsEvent, FilterProposalsState> {
  final ProposalsBloc _proposalsBloc;
  final FetchProfileUseCase _fetchProfileUseCase;
  final AggregateDaoProposalCountsUseCase _aggregateDaoProposalCountsUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  FilterProposalsBloc(
      this._proposalsBloc,
      this._fetchProfileUseCase,
      this._aggregateDaoProposalCountsUseCase,
      this._errorHandlerManager,
      ) : super(const FilterProposalsState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_SaveFilters>(_saveFilters);

    add(const FilterProposalsEvent.initial());
  }

  ValueNotifier<List<int>>? _selectedDaoIndexesNotifier;
  final ValueNotifier<int> _selectedStatusIndexNotifier = ValueNotifier<int>(0);
  List<int>? _selectedDaoIds;

  ValueNotifier<List<int>> get selectedDaoIndexesNotifier => _selectedDaoIndexesNotifier!;
  ValueNotifier<int> get selectedStatusIndexNotifier => _selectedStatusIndexNotifier;
  List<int>? get selectedDaoIds => _selectedDaoIds;

  Future<void> _initial(_Initial event, Emitter<FilterProposalsState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    final Result<ProfileData, HyphaError> profileResult = await _fetchProfileUseCase.run();

    if (profileResult.isValue) {
      if (_proposalsBloc.state.pageState == PageState.success) {
        final List<DaoProposalCountEntity> daoProposalCounts = _aggregateDaoProposalCountsUseCase.run(_proposalsBloc.state.proposals, profileResult.asValue!.value.daos);

        _selectedDaoIndexesNotifier = ValueNotifier<List<int>>(
            List<int>.generate(daoProposalCounts.length, (index) => index)
        );

        emit(state.copyWith(pageState: PageState.success, daoProposalCounts: daoProposalCounts));
      }

      await emit.forEach(_proposalsBloc.stream, onData: (ProposalsState proposalsState) {
        if (proposalsState.pageState == PageState.loading) {
          emit(state.copyWith(pageState: PageState.loading));
        } else if (proposalsState.pageState == PageState.success) {
          final List<DaoProposalCountEntity> daoProposalCounts = _aggregateDaoProposalCountsUseCase.run(proposalsState.proposals, profileResult.asValue!.value.daos);

          _selectedDaoIndexesNotifier ??= ValueNotifier<List<int>>(
              List<int>.generate(daoProposalCounts.length, (index) => index)
          );

          return state.copyWith(pageState: PageState.success, daoProposalCounts: daoProposalCounts);
        }
        return state;
      }).catchError((error) async {
        await _errorHandlerManager.handlerError(error);
        emit(state.copyWith(pageState: PageState.failure));
      });
    } else {
      await _errorHandlerManager.handlerError(profileResult.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  Future<void> _saveFilters(_SaveFilters event, Emitter<FilterProposalsState> emit) async {
    _selectedDaoIds = _selectedDaoIndexesNotifier!.value.map((index) => state.daoProposalCounts[index].dao.docId).toList();

    _proposalsBloc.add(ProposalsEvent.initial(filterStatus: event.filterStatus));
    emit(state.copyWith(command: const PageCommand.navigateToProposals()));
  }
}
