import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/history/transactions/usecases/get_transaction_history_use_case.dart';

part 'page_command.dart';
part 'transactions_bloc.freezed.dart';
part 'transactions_event.dart';
part 'transactions_state.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final GetTransactionHistoryUseCase _getTransactionHistoryUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  TransactionsBloc(this._getTransactionHistoryUseCase, this._errorHandlerManager) : super(const TransactionsState()) {
    on<_Initial>(_initial);
  }

  Future<void> _initial(_Initial event, Emitter<TransactionsState> emit) async {
    final Result<List<TransactionModel>, HyphaError> result = await _getTransactionHistoryUseCase.run();
    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, transactions: result.valueOrCrash));
    } else {
      _errorHandlerManager.handlerError(result.asError!.error);
    }
  }
}
