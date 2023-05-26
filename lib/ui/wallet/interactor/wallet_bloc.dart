import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/history/transactions/usecases/get_transaction_history_use_case.dart';
import 'package:hypha_wallet/ui/wallet/data/token_data.dart';

part 'page_command.dart';

part 'wallet_bloc.freezed.dart';

part 'wallet_event.dart';

part 'wallet_state.dart';

const tokens = [
  TokenData(amount: 3000.00, image: 'https://picsum.photos/200', name: 'Hypha'),
  TokenData(amount: 2500.00, image: 'https://picsum.photos/200', name: 'AweToken'),
  TokenData(amount: 1500.00, image: 'https://picsum.photos/200', name: 'Gery Token'),
  TokenData(amount: 500.00, image: 'https://picsum.photos/200', name: 'Nik Token'),
  TokenData(amount: 100.00, image: 'https://picsum.photos/200', name: 'Pepe Token'),
  TokenData(amount: 10.00, image: 'https://picsum.photos/200', name: 'Kaka Token'),
  TokenData(amount: 0.00, image: 'https://picsum.photos/200', name: 'Feo Token'),
  TokenData(amount: 2736728280.00, image: 'https://picsum.photos/200', name: 'Mucho Token'),
];

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final GetTransactionHistoryUseCase _getTransactionHistoryUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  WalletBloc(this._getTransactionHistoryUseCase, this._errorHandlerManager) : super(const WalletState()) {
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
        tokens: tokens,
      ));
    } else {
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}
