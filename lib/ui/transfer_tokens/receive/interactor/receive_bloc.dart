import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/transfer_tokens/components/keypad_key.dart';
import 'package:hypha_wallet/ui/transfer_tokens/send/usecases/send_token_use_case.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

part 'page_command.dart';

part 'receive_bloc.freezed.dart';

part 'receive_event.dart';

part 'receive_state.dart';

class ReceiveBloc extends Bloc<ReceiveEvent, ReceiveState> {
  final SendTokenUseCase sendTokenUseCase;

  ReceiveBloc(
    WalletTokenData tokenData,
    this.sendTokenUseCase
  ) : super(ReceiveState(tokenData: tokenData)) {
    on<_Initial>(_initial);
    on<_OnKeypadTapped>(_onKeypadTapped);
    on<_OnMemoEntered>(_onMemoEntered);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<ReceiveState> emit) async {}

  FutureOr<void> _onKeypadTapped(_OnKeypadTapped event, Emitter<ReceiveState> emit) {
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

  FutureOr<void> _onMemoEntered(_OnMemoEntered event, Emitter<ReceiveState> emit) {
    emit(state.copyWith(memo: event.memo));
  }
}
