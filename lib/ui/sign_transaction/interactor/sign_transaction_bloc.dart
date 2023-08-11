import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/data/transaction_action_data.dart';
import 'package:hypha_wallet/ui/sign_transaction/success/sign_transaction_success_page.dart';
import 'package:hypha_wallet/ui/sign_transaction/usecases/create_free_transaction_use_case.dart';
import 'package:hypha_wallet/ui/sign_transaction/usecases/sign_transaction_use_case.dart';

part 'page_command.dart';
part 'sign_transaction_bloc.freezed.dart';
part 'sign_transaction_event.dart';
part 'sign_transaction_state.dart';

class SignTransactionBloc extends Bloc<SignTransactionEvent, SignTransactionState> {
  final SignTransactionUseCase _signTransactionUseCase;
  final FreeTransactionUseCase _freeTransactionUseCase;

  SignTransactionBloc(this._signTransactionUseCase, this._freeTransactionUseCase, ScanQrCodeResultData _qrCodeData)
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
    /// Try to create a free transaction

    /// Would be a lot nicer if we can get the authenticated user somewhere from the bloc
    /// Would also work better for supporting multiple accounts.
    ///
    /// This is also the wrong place to try to create a free transaction, it needs to happen upstream when we show the data on
    /// the transaction screen - this code here only gets executed when user signs and slides right
    /// But the transaction transformation is now tested, and the execution is also tested.
    final authenticated = GetIt.I.get<AuthRepository>().authDataOrCrash;
    final transaction = await _freeTransactionUseCase.run(authenticated.userProfileData, state.qrCodeData.transaction);

    /// Show loading, sign transaction, navigate to success or show error
    final result = await _signTransactionUseCase.run(SignTransactionInput(
      transaction,
      state.callback,
    ));
    if (result.isValue) {
      emit(
          state.copyWith(command: const PageCommand.navigateToTransactionSuccess(SignSuccessTransactionType.approved)));
    } else {
      emit(state.copyWith(command: const PageCommand.navigateToTransactionFailed()));
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
