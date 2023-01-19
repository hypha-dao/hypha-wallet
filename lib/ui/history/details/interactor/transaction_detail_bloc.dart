import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'page_command.dart';
part 'transaction_detail_bloc.freezed.dart';
part 'transaction_detail_event.dart';
part 'transaction_detail_state.dart';

class TransactionDetailBloc extends Bloc<TransactionDetailEvent, TransactionDetailState> {
  TransactionDetailBloc() : super(const TransactionDetailState()) {
    on<_Initial>(_initial);
  }

  Future<void> _initial(_Initial event, Emitter<TransactionDetailState> emit) async {}
}
