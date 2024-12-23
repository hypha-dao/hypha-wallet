import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/cast_vote_use_case.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/cast_vote_use_case_input.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/get_proposal_details_use_case.dart';

part 'page_command.dart';
part 'proposal_details_bloc.freezed.dart';
part 'proposal_details_event.dart';
part 'proposal_details_state.dart';

class ProposalDetailsBloc extends Bloc<ProposalDetailsEvent, ProposalDetailsState> {
  final GetProposalDetailsUseCase _getProposalDetailsUseCase;
  final CastVoteUseCase _castVoteUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final String _proposalId;

  ProposalDetailsBloc(this._getProposalDetailsUseCase, this._castVoteUseCase, this._errorHandlerManager, this._proposalId) : super(const ProposalDetailsState()) {
    on<_Initial>(_initial);
    on<_CastVote>(_castVote);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<ProposalDetailsState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    final Result<ProposalDetailsModel, HyphaError> result = await _getProposalDetailsUseCase.run(_proposalId);

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, proposalDetailsModel: result.asValue!.value));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  Future<void> _castVote(_CastVote event, Emitter<ProposalDetailsState> emit) async {
    emit(state.copyWith(votingState: PageState.loading));

    final Result<String, HyphaError> result = await _castVoteUseCase.run(CastVoteUseCaseInput(_proposalId, event.voteStatus));

    if (result.isValue) {
      emit(state.copyWith(votingState: PageState.success, command: const PageCommand.navigateToSuccessPage()));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(votingState: PageState.failure, command: PageCommand.navigateToFailurePage(result.asError!.error)));
    }
  }
}
