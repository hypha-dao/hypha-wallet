import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'import_account_bloc.freezed.dart';
part 'import_account_event.dart';
part 'import_account_state.dart';
part 'page_command.dart';

class ImportAccountBloc extends Bloc<ImportAccountEvent, ImportAccountState> {
  ImportAccountBloc() : super(ImportAccountState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<ImportAccountState> emit) async {
    emit(state.copyWith(pageState: PageState.success));
  }
}
