import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_transaction_tile.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';
import 'package:hypha_wallet/ui/wallet/usecases/get_transaction_history_data_use_case.dart';
import 'package:hypha_wallet/ui/wallet/usecases/get_user_tokens_use_case.dart';

part 'page_command.dart';

part 'wallet_bloc.freezed.dart';

part 'wallet_event.dart';

part 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final ErrorHandlerManager _errorHandlerManager;
  final GetUserTokensUseCase _getUserTokensUseCase;
  final GetTransactionHistoryDataUseCase _getTransactionHistoryDataUseCase;

  WalletBloc(
    this._errorHandlerManager,
    this._getUserTokensUseCase,
    this._getTransactionHistoryDataUseCase,
  ) : super(const WalletState()) {
    on<_Initial>(_initial);
    on<_OnTransactionsChanged>(_onTransactionsChanged);
    on<_OnRefresh>(_onRefresh);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<WalletState> emit) async {
    emit(state.copyWith(pageState: PageState.success, loadingTransaction: true));

    unawaited(_getTransactionHistoryDataUseCase.getTransferTransactionsForTokens().then((result) {
      if (isClosed) {
        return;
      }

      if (result.isValue) {
        add(WalletEvent.onTransactionsChanged(result));
      }
    }));

    final Stream<List<WalletTokenData>> tokens = _getUserTokensUseCase.run();
    await emit.forEach(tokens, onData: (data) {
      return state.copyWith(pageState: PageState.success, tokens: data);
    });
  }

  FutureOr<void> _onTransactionsChanged(_OnTransactionsChanged event, Emitter<WalletState> emit) {
    if (event.value.isValue) {
      emit(state.copyWith(
        pageState: PageState.success,
        recentTransactions: event.value.asValue!.value,
        loadingTransaction: false,
      ));
    } else {
      _errorHandlerManager.handlerError(event.value.asError!.error);
      emit(state.copyWith(loadingTransaction: false));
    }
  }

  FutureOr<void> _onRefresh(_OnRefresh event, Emitter<WalletState> emit) {
    add(const WalletEvent.initial());
  }
}
