import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/check_account_availability_use_case.dart';
import 'package:image_picker/image_picker.dart';

part 'create_account_bloc.freezed.dart';
part 'create_account_event.dart';
part 'create_account_state.dart';
part 'page_command.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final CheckAccountAvailabilityUseCase _checkAccountAvailabilityUseCase;

  CreateAccountBloc(
    this._checkAccountAvailabilityUseCase,
    XFile? image,
    String userName,
  ) : super(CreateAccountState(userName: userName, image: image)) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<CreateAccountState> emit) async {
    final userAccount = _generateUserAccount(state.userName);
    emit(state.copyWith(pageState: PageState.success, userAccount: userAccount));

    // emit(state.copyWith(pageState: PageState.loading, userAccount: userAccount));
    // Result<bool, PageError> result = await _checkAccountAvailabilityUseCase.run(userAccount);
    //
    // if (result.isValue) {
    //   /// if account is available.
    //   if (result.asValue!.value) {
    //     emit(state.copyWith(pageState: PageState.success, userAccount: userAccount));
    //   } else {
    //
    //   }
    // } else {
    //   /// Something failed trying to check if account is available
    // }
  }

  String _generateUserAccount(String fullName) {
    String suggestedUsername = fullName.toLowerCase().trim().split('').map((character) {
      final legalChar = RegExp(r'[a-z]|1|2|3|4|5').allMatches(character).isNotEmpty;

      return legalChar ? character : '';
    }).join();

    suggestedUsername = suggestedUsername.padRight(12, '1');

    return suggestedUsername.substring(0, 12);
  }
}