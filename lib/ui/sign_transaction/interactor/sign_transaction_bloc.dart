import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/data/transaction_action_data.dart';
import 'package:hypha_wallet/ui/sign_transaction/success/sign_transaction_success_page.dart';
import 'package:hypha_wallet/ui/sign_transaction/usecases/sign_transaction_use_case.dart';

part 'page_command.dart';

part 'sign_transaction_bloc.freezed.dart';

part 'sign_transaction_event.dart';

part 'sign_transaction_state.dart';

class SignTransactionBloc extends Bloc<SignTransactionEvent, SignTransactionState> {
  final SignTransactionUseCase _signTransactionUseCase;

  SignTransactionBloc(this._signTransactionUseCase, ScanQrCodeResultData _qrCodeData)
      : super(
          SignTransactionState(
            qrCodeData: _qrCodeData,
            callback: _qrCodeData.esr.callback,
            transactionDetailsData: TransactionDetailsData.fromQrCodeData(_qrCodeData),
          ),
        ) {
    on<_Initial>(_initial);
    on<_OnUserSlideCompleted>(_onUserSlideCompleted);
    on<_OnUserSlideCanceled>(_onUserSlideCanceled);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<SignTransactionState> emit) async {}

  FutureOr<void> _onUserSlideCompleted(_OnUserSlideCompleted event, Emitter<SignTransactionState> emit) async {
    /// Show loading, sign transaction, navigate to success or show error
    final result = await _signTransactionUseCase.run(SignTransactionInput(
      state.qrCodeData.freeTransaction, // Note: Create free transaction if possible!
      state.callback,
    ));
    if (result.isValue) {
      emit(
        state.copyWith(command: const PageCommand.navigateToTransactionSuccess(SignSuccessTransactionType.approved)),
      );
    } else {
      LogHelper.e('Transaction error: ${result.asError?.error.message}');
      emit(state.copyWith(command: PageCommand.navigateToTransactionFailed(result.asError!)));
    }
  }

  FutureOr<void> _onUserSlideCanceled(_OnUserSlideCanceled event, Emitter<SignTransactionState> emit) async {
    /// Show loading, reject, navigate to success or show error
    // final result = await _signTransactionUseCase.run('MOCK DATA');
    // if (result.isValue) {
    // emit(state.copyWith(command: const PageCommand.navigateToTransactionFailed()));
    emit(state.copyWith(command: const PageCommand.navigateAway()));
    // } else {
    //   emit(state.copyWith(command: const PageCommand.navigateToTransactionFailed()));
    // }
  }
}
