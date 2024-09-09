import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/get_proposal_details_use_case.dart';

import '../../../../core/error_handler/error_handler_manager.dart';
import '../../../../core/error_handler/model/hypha_error.dart';
import '../../../../core/network/models/proposal_model.dart';
import '../../../architecture/result/result.dart';

part 'page_command.dart';
part 'proposal_detail_bloc.freezed.dart';
part 'proposal_detail_event.dart';
part 'proposal_detail_state.dart';

class ProposalDetailBloc extends Bloc<ProposalDetailEvent, ProposalDetailState> {
  final GetProposalDetailsUseCase _getProposalDetailsUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final String _proposalId;

  ProposalDetailBloc(this._proposalId,this._getProposalDetailsUseCase, this._errorHandlerManager) : super(const ProposalDetailState()) {
    on<_Initial>(_initial);
  }

  Future<void> _initial(_Initial event, Emitter<ProposalDetailState> emit) async {
    final Result<ProposalDetailsModel, HyphaError> result = await _getProposalDetailsUseCase.run(_proposalId);
    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}
