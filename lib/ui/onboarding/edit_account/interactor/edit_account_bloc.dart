import 'dart:async';

import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/extension/collection_extension.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_error.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;
import 'package:hypha_wallet/ui/onboarding/edit_account/data/user_account_requirement.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/user_account_error.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/check_account_availability_use_case.dart';
import 'package:image_picker/image_picker.dart';

part 'edit_account_bloc.freezed.dart';
part 'edit_account_event.dart';
part 'edit_account_state.dart';
part 'page_command.dart';

class EditAccountBloc extends Bloc<EditAccountEvent, EditAccountState> {
  final CheckAccountAvailabilityUseCase _checkAccountAvailabilityUseCase;
  late CancelableOperation<HResult.Result<bool, PageError>>? searchUserCancellable = null;

  EditAccountBloc(
    this._checkAccountAvailabilityUseCase,
    XFile? image,
    String userName,
  ) : super(EditAccountState(userName: userName, image: image)) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_OnAccountChange>(_onAccountChange);
  }

  List<UserAccountRequirement> getFreshRequirements({RequirementState state = RequirementState.empty}) =>
      UserAccountError.values.map((element) => UserAccountRequirement(error: element, state: state)).toList();

  Future<void> _initial(_Initial event, Emitter<EditAccountState> emit) async {
    emit(state.copyWith(pageState: PageState.success, userAccountRequirements: getFreshRequirements()));
  }

  List<UserAccountError> _validateUserAccount(String username) {
    final validCharacters = RegExp(r'^[a-z1-5]+$');

    List<UserAccountError> errors = List.empty(growable: true);

    if (RegExp(r'0|6|7|8|9').allMatches(username).isNotEmpty) {
      errors.add(UserAccountError.onlyNumbers15);
    }
    if (username.toLowerCase() != username) {
      errors.add(UserAccountError.lowercaseOnly);
    }
    if (!validCharacters.hasMatch(username) || username.contains(' ')) {
      errors.add(UserAccountError.noSpecialCharactersOrSpaces);
    }
    if (username.length != 12) {
      errors.add(UserAccountError.mustBe12Characters);
      errors.add(UserAccountError.alreadyTaken);
    }

    return errors;
  }

  /// Validate the new account input
  /// Display Errors if any
  /// Check the new account availability
  Future<FutureOr<void>> _onAccountChange(_OnAccountChange event, Emitter<EditAccountState> emit) async {
    searchUserCancellable?.cancel();
    if (event.value.isEmpty) {
      add(EditAccountEvent.initial());
    } else {
      final List<UserAccountError> result = _validateUserAccount(event.value);
      List<UserAccountRequirement> completedItems = getFreshRequirements(state: RequirementState.completed);

      result.forEach((UserAccountError element) {
        completedItems = updateItemState(completedItems, element, RequirementState.failed);
      });

      emit(state.copyWith(userAccountRequirements: completedItems));

      if (event.value.length == 12) {
        completedItems = updateItemState(completedItems, UserAccountError.alreadyTaken, RequirementState.loading);
        emit(state.copyWith(userAccountRequirements: completedItems));

        searchUserCancellable = CancelableOperation.fromFuture(
          _checkAccountAvailabilityUseCase.run(event.value),
          onCancel: () => {LogHelper.d('_checkAccountAvailabilityUseCase cancelled for: ' + event.value)},
        );

        HResult.Result<bool, PageError> result = await searchUserCancellable!.value;

        emit(state.copyWith(userAccountRequirements: completedItems));

        if (result.isValue) {
          completedItems = updateItemState(
            completedItems,
            UserAccountError.alreadyTaken,
            result.asValue!.value ? RequirementState.completed : RequirementState.failed,
          );
          emit(state.copyWith(userAccountRequirements: completedItems));
        } else {
          /// Show error? What to do
        }
      }
    }
  }

  List<UserAccountRequirement> updateItemState(
    List<UserAccountRequirement> items,
    UserAccountError error,
    RequirementState state,
  ) {
    UserAccountRequirement item = items.firstWhere((UserAccountRequirement item) => item.error == error);
    int index = items.indexOf(item);
    return items.replaceImmutable(index, item.updateState(state));
  }
}
