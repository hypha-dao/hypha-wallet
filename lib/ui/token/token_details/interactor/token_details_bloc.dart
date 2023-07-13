import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/network/models/token_value.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/token/token_details/usecases/get_token_balance_use_case.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/add_token_to_user_use_case.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/remove_token_from_user_use_case.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_transaction_tile.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';
import 'package:hypha_wallet/ui/wallet/usecases/get_transaction_history_data_use_case.dart';

part 'page_command.dart';
part 'token_details_bloc.freezed.dart';
part 'token_details_event.dart';
part 'token_details_state.dart';

class TokenDetailsBloc extends Bloc<TokenDetailsEvent, TokenDetailsState> {
  final AddTokenToUserUseCase _addTokenToUserUseCase;
  final RemoveTokenFromUserUseCase _removeTokenFromUserUseCase;
  final GetTokenBalanceUseCase _getTokenBalanceUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final GetTransactionHistoryDataUseCase _getTransactionHistoryDataUseCase;

  TokenDetailsBloc(
    this._removeTokenFromUserUseCase,
    this._addTokenToUserUseCase,
    this._getTokenBalanceUseCase,
    this._errorHandlerManager,
    this._getTransactionHistoryDataUseCase,
    WalletTokenData tokenData,
  ) : super(TokenDetailsState(token: tokenData)) {
    on<_Initial>(_initial);
    on<_OnSendTapped>(_onSendTapped);
    on<_OnReceiveTapped>(_onReceiveTapped);
    on<_AddTokenToUser>(_addTokenToUser);
    on<_RemoveTokenToUser>(_removeTokenToUser);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<TokenDetailsState> emit) async {
    emit(state.copyWith(loadingTransaction: true, loadingTokenBalance: true));


    await _getTransactionHistoryDataUseCase.run(true).then((result) {
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
    });

    final result = await _getTokenBalanceUseCase.run(state.token.symbol, state.token.contract);
    if (result.isValue) {
      final TokenValue tokenValue = result.asValue!.value;
      emit(state.copyWith(token: state.token.withUserOwnedAmount(tokenValue.amount), loadingTokenBalance: false));
    } else {
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(loadingTokenBalance: false));
    }
  }

  FutureOr<void> _addTokenToUser(_AddTokenToUser event, Emitter<TokenDetailsState> emit) async {
    await _addTokenToUserUseCase.run(event.token.id);
  }

  FutureOr<void> _removeTokenToUser(_RemoveTokenToUser event, Emitter<TokenDetailsState> emit) async {
    await _removeTokenFromUserUseCase.run(event.token.id);
  }

  FutureOr<void> _onSendTapped(_OnSendTapped event, Emitter<TokenDetailsState> emit) {}

  FutureOr<void> _onReceiveTapped(_OnReceiveTapped event, Emitter<TokenDetailsState> emit) {}
}
