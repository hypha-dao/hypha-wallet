import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart' as Get;
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/get_proposal_details_use_case.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';

part 'proposal_detail_bloc.freezed.dart';

part 'proposal_detail_event.dart';

part 'proposal_detail_state.dart';

class ProposalDetailBloc
    extends Bloc<ProposalDetailEvent, ProposalDetailState> {
  final GetProposalDetailsUseCase _getProposalDetailsUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final String _proposalId;

  ProposalDetailBloc(this._proposalId, this._getProposalDetailsUseCase,
      this._errorHandlerManager)
      : super(const ProposalDetailState()) {
    on<_Initial>(_initial);
    on<_CastVote>(_castVote);
  }

  Future<void> _initial(
      _Initial event, Emitter<ProposalDetailState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    final Result<ProposalDetailsModel, HyphaError> result =
        await _getProposalDetailsUseCase.run(_proposalId);
    if (result.isValue) {
      emit(state.copyWith(
          pageState: PageState.success,
          proposalDetailsModel: result.asValue!.value));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  Future<void> _castVote(
      _CastVote event, Emitter<ProposalDetailState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final Result<String, HyphaError> result =
        await _getProposalDetailsUseCase.castVote(_proposalId, event.vote);
    if (result.isValue) {
      GetIt.I.get<ProposalsBloc>().add(const ProposalsEvent.initial());
      Get.Get.back();
      emit(state.copyWith(pageState: PageState.success));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}
