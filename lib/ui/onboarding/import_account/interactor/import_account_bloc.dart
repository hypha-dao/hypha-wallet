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
    on<_OnWordChange>(_onWordChange);
    on<_OnActionButtonTapped>(_onActionButtonTapped);
  }

  Future<void> _initial(_Initial event, Emitter<ImportAccountState> emit) async {
    emit(state.copyWith(pageState: PageState.success));
  }

  FutureOr<void> _onWordChange(_OnWordChange event, Emitter<ImportAccountState> emit) {
    final Map<int, String> enteredWords = Map.from(state.userEnteredWords);
    enteredWords[event.index] = event.word;
    emit(state.copyWith(userEnteredWords: enteredWords));
  }

  FutureOr<void> _onActionButtonTapped(_OnActionButtonTapped event, Emitter<ImportAccountState> emit) {
    // final authData = GenerateKeyFromRecoveryWordsUseCase().run(state.userEnteredWords.values.toList());
    // final alternateAuthData = GenerateKeyFromSeedsPassportWordsUseCase().run(state.userEnteredWords.values.toList());
    // add(FindAccountByKey(
    //   privateKey: authData.eOSPrivateKey.toString(),
    //   alternatePrivateKey: alternateAuthData.eOSPrivateKey.toString(),
    //   words: authData.words,
    // ));
  }
}
