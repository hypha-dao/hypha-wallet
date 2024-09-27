import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';
import 'package:hypha_wallet/ui/proposals/list/usecases/get_proposals_use_case.dart';

part 'proposals_history_bloc.freezed.dart';
part 'proposals_history_event.dart';
part 'proposals_history_state.dart';

class ProposalsHistoryBloc extends Bloc<ProposalsHistoryEvent, ProposalsHistoryState> {
  final GetProposalsUseCase _getProposalsUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final DaoData _dao;

  ProposalsHistoryBloc(this._getProposalsUseCase, this._errorHandlerManager, this._dao) : super(const ProposalsHistoryState()) {
    on<_Initial>(_initial);
  }

  Future<void> _initial(_Initial event, Emitter<ProposalsHistoryState> emit) async {
    if (!event.refresh) {
      emit(state.copyWith(pageState: PageState.loading));
    }

    final Result<List<ProposalModel>, HyphaError> proposalsResult = await _getProposalsUseCase.run([_dao], FilterStatus.past);

    if (proposalsResult.isValue) {
      emit(state.copyWith(pageState: PageState.success, proposals: proposalsResult.asValue!.value));
    } else {
      await _errorHandlerManager.handlerError(proposalsResult.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}
