import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/data/transaction_action_data.dart';
import 'package:hypha_wallet/ui/transaction_details/success/transaction_success_page.dart';
import 'package:hypha_wallet/ui/transaction_details/usecases/sign_transaction_use_case.dart';

part 'page_command.dart';
part 'transaction_details_bloc.freezed.dart';
part 'transaction_details_event.dart';
part 'transaction_details_state.dart';

class TransactionDetailsBloc extends Bloc<TransactionDetailsEvent, TransactionDetailsState> {
  final SignTransactionUseCase _signTransactionUseCase;

  TransactionDetailsBloc(this._signTransactionUseCase, ScanQrCodeResultData _qrCodeData)
      : super(
          TransactionDetailsState(
              qrCodeData: _qrCodeData,
              callback: _qrCodeData.esr.callback,
              transactionDetailsData: TransactionDetailsData(
                  signingTitle: 'From ${_qrCodeData.esr.actions.first.account}',
                  expirationTime: const Duration(seconds: 60),
                  cards: _qrCodeData.transaction.actions.map((EOSAction e) {
                    return TransactionDetailsCardData(
                      params: e.data.map((key, value) => MapEntry(key, value.toString())),
                      contractAction: '${e.account ?? ''} - ${e.name ?? ''}',
                    );
                  }).toList())),
        ) {
    on<_Initial>(_initial);
    on<_OnUserSlideCompleted>(_onUserSlideCompleted);
    on<_OnUserSlideCanceled>(_onUserSlideCanceled);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<TransactionDetailsState> emit) async {}

  FutureOr<void> _onUserSlideCompleted(_OnUserSlideCompleted event, Emitter<TransactionDetailsState> emit) async {
    /// Show loading, sign transaction, navigate to success or show error
    final result = await _signTransactionUseCase.run(state.qrCodeData.transaction);
    if (result.isValue) {
      emit(state.copyWith(command: const PageCommand.navigateToTransactionSuccess(SuccessTransactionType.approved)));
    } else {
      emit(state.copyWith(command: const PageCommand.navigateToTransactionFailed()));
    }
  }

  FutureOr<void> _onUserSlideCanceled(_OnUserSlideCanceled event, Emitter<TransactionDetailsState> emit) async {
    /// Show loading, reject, navigate to success or show error
    // final result = await _signTransactionUseCase.run('MOCK DATA');
    // if (result.isValue) {
    emit(state.copyWith(command: const PageCommand.navigateToTransactionFailed()));
    // emit(state.copyWith(command: const PageCommand.navigateToTransactionSuccess(SuccessTransactionType.rejected)));
    // } else {
    //   emit(state.copyWith(command: const PageCommand.navigateToTransactionFailed()));
    // }
  }
}
