import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
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
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<WalletState> emit) async {
    emit(state.copyWith(pageState: PageState.success, loadingTransaction: true));

    unawaited(_getTransactionHistoryDataUseCase.run(true).then((result) {
      if (result.isValue) {
        emit(state.copyWith(
          pageState: PageState.success,
          recentTransactions: result.valueOrCrash,
          loadingTransaction: false,
        ));
      } else {
        // ignore: unawaited_futures
        _errorHandlerManager.handlerError(result.asError!.error);
        emit(state.copyWith(loadingTransaction: false));
      }
    }));

    final Stream<List<WalletTokenData>> tokens = await _getUserTokensUseCase.run();
    await emit.forEach(tokens, onData: (data) {
      return state.copyWith(pageState: PageState.success, tokens: data);
    });
  }
}
