import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/data/transaction_action_data.dart';
import 'package:hypha_wallet/ui/transaction_details/usecases/sign_transaction_use_case.dart';

part 'page_command.dart';
part 'transaction_details_bloc.freezed.dart';
part 'transaction_details_event.dart';
part 'transaction_details_state.dart';

class TransactionDetailsBloc extends Bloc<TransactionDetailsEvent, TransactionDetailsState> {
  final SignTransactionUseCase _signTransactionUseCase;
  TransactionDetailsBloc(this._signTransactionUseCase, TransactionDetailsData _transactionDetailsData)
      : super(TransactionDetailsState(transactionDetailsData: _transactionDetailsData)) {
    on<_Initial>(_initial);
    on<_OnUserSlideCompleted>(_onUserSlideCompleted);
    on<_OnUserSlideCanceled>(_onUserSlideCanceled);
    on<_OnCancelTransactionTapped>(_onCancelTransactionTapped);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<TransactionDetailsState> emit) async {}

  FutureOr<void> _onUserSlideCompleted(_OnUserSlideCompleted event, Emitter<TransactionDetailsState> emit) async {
    /// Show loading, sign transaction, navigate to success or show error
    final result = await _signTransactionUseCase.run('MOCK DATA');
    if (result.isValue) {
      emit(state.copyWith(command: const PageCommand.navigateToTransactionSuccess()));
    } else {
      emit(state.copyWith(command: const PageCommand.navigateToTransactionFailed()));
    }
  }

  FutureOr<void> _onUserSlideCanceled(_OnUserSlideCanceled event, Emitter<TransactionDetailsState> emit) async {
    /// Show loading, cancel transaction, navigate to cancel
  }

  FutureOr<void> _onCancelTransactionTapped(_OnCancelTransactionTapped event, Emitter<TransactionDetailsState> emit) {
    emit(state.copyWith(command: const PageCommand.transactionCancelled()));
  }
}
