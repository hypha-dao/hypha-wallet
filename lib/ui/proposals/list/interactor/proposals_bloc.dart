import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/list/usecases/get_proposals_use_case.dart';

part 'page_command.dart';
part 'proposals_bloc.freezed.dart';
part 'proposals_event.dart';
part 'proposals_state.dart';

class ProposalsBloc extends Bloc<ProposalsEvent, ProposalsState> {
  final GetProposalsUseCase _getProposalsUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  ProposalsBloc(this._getProposalsUseCase, this._errorHandlerManager) : super(const ProposalsState()) {
    on<_Initial>(_initial);
  }

  Future<void> _initial(_Initial event, Emitter<ProposalsState> emit) async {
    if(!event.refresh) {
      emit(state.copyWith(pageState: PageState.loading));
    }

    final Result<List<ProposalModel>, HyphaError> result = await _getProposalsUseCase.run();

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, proposals: result.valueOrCrash));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}