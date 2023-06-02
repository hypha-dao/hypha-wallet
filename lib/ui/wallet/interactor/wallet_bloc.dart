import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/history/transactions/usecases/get_transaction_history_use_case.dart';
import 'package:hypha_wallet/ui/token_settings/data/settings_token_data.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';
import 'package:hypha_wallet/ui/wallet/usecases/get_user_tokens_use_case.dart';

part 'page_command.dart';

part 'wallet_bloc.freezed.dart';

part 'wallet_event.dart';

part 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final GetTransactionHistoryUseCase _getTransactionHistoryUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final GetUserTokensUseCase _getUserTokensUseCase;

  WalletBloc(
    this._getTransactionHistoryUseCase,
    this._errorHandlerManager,
    this._getUserTokensUseCase,
  ) : super(const WalletState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<WalletState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final Result<List<TransactionModel>, HyphaError> result = await _getTransactionHistoryUseCase.run();
    if (result.isValue) {
      emit(state.copyWith(
        pageState: PageState.success,
        recentTransactions: result.valueOrCrash
            .where((TransactionModel element) => element is TransactionRedeem || element is TransactionTransfer)
            .toList(),
      ));
    } else {
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }

    final Stream<List<WalletTokenData>> tokens = await _getUserTokensUseCase.run();
    await emit.forEach(tokens, onData: (data) {
      return state.copyWith(pageState: PageState.success, tokens: data);
    });
  }
}
