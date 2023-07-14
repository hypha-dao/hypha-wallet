import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/send/data/amount_percentage.dart';
import 'package:hypha_wallet/ui/send/data/keypad_key.dart';
import 'package:hypha_wallet/ui/send/usecases/send_token_use_case.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

part 'page_command.dart';

part 'send_bloc.freezed.dart';

part 'send_event.dart';

part 'send_state.dart';

class SendBloc extends Bloc<SendEvent, SendState> {
  final SendTokenUseCase sendTokenUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  SendBloc(
    UserProfileData receiverUser,
    WalletTokenData tokenData,
    this.sendTokenUseCase,
    this._errorHandlerManager,
  ) : super(SendState(receiverUser: receiverUser, tokenData: tokenData)) {
    on<_Initial>(_initial);
    on<_OnPercentageTapped>(_onPercentageTapped);
    on<_OnKeypadTapped>(_onKeypadTapped);
    on<_OnMemoEntered>(_onMemoEntered);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_OnSendTapped>(_onSendTapped);
  }

  Future<void> _initial(_Initial event, Emitter<SendState> emit) async {}

  FutureOr<void> _onPercentageTapped(_OnPercentageTapped event, Emitter<SendState> emit) {
    final newValue = (state.tokenData.userOwnedAmount ?? 0) * event.amountPercentage.value;
    emit(state.copyWith(userEnteredAmount: newValue.toStringAsFixed(state.tokenData.precision)));
  }

  FutureOr<void> _onKeypadTapped(_OnKeypadTapped event, Emitter<SendState> emit) {
    final newUserEntered = switch (event.tappedKey) {
      KeypadKey.delete => deleteValue(event.tappedKey, state.userEnteredAmount),
      _ => addValue(event.tappedKey, state.userEnteredAmount),
    };

    emit(state.copyWith(userEnteredAmount: newUserEntered));
  }

  String? deleteValue(KeypadKey tappedKey, String? userEnteredAmount) {
    if (userEnteredAmount?.length == 1) {
      return null;
    } else if ((userEnteredAmount?.length ?? 0) > 1) {
      return userEnteredAmount!.substring(0, userEnteredAmount.length - 1);
    }
    return null;
  }

  String? addValue(KeypadKey tappedKey, String? userEnteredAmount) {
    if (tappedKey == KeypadKey.dot && userEnteredAmount?.contains('.') == true) {
      return userEnteredAmount;
    }

    return userEnteredAmount != null ? userEnteredAmount + tappedKey.value : tappedKey.value;
  }

  FutureOr<void> _onMemoEntered(_OnMemoEntered event, Emitter<SendState> emit) {
    emit(state.copyWith(memo: event.memo));
  }

  FutureOr<void> _onSendTapped(_OnSendTapped event, Emitter<SendState> emit) async {
    emit(state.copyWith(isSendButtonLoading: true));
    if (state.userEnteredAmount != null) {
      final result = await sendTokenUseCase.run(
        state.tokenData,
        state.receiverUser,
        state.userEnteredAmount!,
        state.memo,
      );

      if(result.isValue) {
        emit(state.copyWith(isSendButtonLoading: false, command: PageCommand.navigateToSendSuccess(result.valueOrCrash)));
      } else {
        emit(state.copyWith(isSendButtonLoading: false));
        await _errorHandlerManager.handlerError(result.asError!.error);
      }
    } else {
      emit(state.copyWith(isSendButtonLoading: false));
      await _errorHandlerManager.handlerError(HyphaError.generic('User entered amount cannot be empty'));
    }
  }
}
