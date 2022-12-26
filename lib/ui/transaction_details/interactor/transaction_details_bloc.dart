import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'page_command.dart';
part 'transaction_details_bloc.freezed.dart';
part 'transaction_details_event.dart';
part 'transaction_details_state.dart';

class TransactionDetailsBloc extends Bloc<TransactionDetailsEvent, TransactionDetailsState> {
  TransactionDetailsBloc() : super(TransactionDetailsState()) {
    on<_Initial>(_initial);
    on<_OnUserSlideCompleted>(_onUserSlideCompleted);
    on<_OnCancelTransactionTapped>(_onCancelTransactionTapped);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<TransactionDetailsState> emit) async {}

  FutureOr<void> _onUserSlideCompleted(_OnUserSlideCompleted event, Emitter<TransactionDetailsState> emit) {
    /// Show loading, sign transaction, navigate to success or show error
  }

  FutureOr<void> _onCancelTransactionTapped(_OnCancelTransactionTapped event, Emitter<TransactionDetailsState> emit) {
    emit(state.copyWith(command: PageCommand.transactionCancelled()));
  }
}
