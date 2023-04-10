import 'dart:async';

import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/collection_extension.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/crypto_auth_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as Hypha;
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/data/user_account_requirement.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/edit_account_page.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/user_account_error.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/check_account_availability_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/create_account_use_case.dart';
import 'package:image_picker/image_picker.dart';

part 'edit_account_bloc.freezed.dart';
part 'edit_account_event.dart';
part 'edit_account_state.dart';
part 'page_command.dart';

class EditAccountBloc extends Bloc<EditAccountEvent, EditAccountState> {
  final CheckAccountAvailabilityUseCase _checkAccountAvailabilityUseCase;
  final CryptoAuthService _cryptoAuthService;
  final CreateAccountUseCase _createAccountUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  CancelableOperation<Hypha.Result<bool, HyphaError>>? searchUserCancellable;

  EditAccountBloc(
    this._checkAccountAvailabilityUseCase,
    this._createAccountUseCase,
    this._errorHandlerManager,
    this._cryptoAuthService,
    PageParams pageParams,
  ) : super(EditAccountState(userName: pageParams.name, image: pageParams.file)) {
    on<_Initial>(_initial);
    on<_OnNextPressed>(_onNextPressed);
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

    final List<UserAccountError> errors = List.empty(growable: true);

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
  FutureOr<void> _onAccountChange(_OnAccountChange event, Emitter<EditAccountState> emit) async {
    emit(state.copyWith(userAccount: event.value));
    await searchUserCancellable?.cancel();
    if (event.value.isEmpty) {
      add(const EditAccountEvent.initial());
    } else {
      final List<UserAccountError> result = _validateUserAccount(event.value);
      List<UserAccountRequirement> completedItems = getFreshRequirements(state: RequirementState.completed);

      for (final element in result) {
        completedItems = updateItemState(completedItems, element, RequirementState.failed);
      }

      emit(state.copyWith(userAccountRequirements: completedItems));

      if (event.value.length == 12) {
        completedItems = updateItemState(completedItems, UserAccountError.alreadyTaken, RequirementState.loading);
        emit(state.copyWith(userAccountRequirements: completedItems));

        searchUserCancellable = CancelableOperation.fromFuture(
          _checkAccountAvailabilityUseCase.run(event.value),
          onCancel: () => {LogHelper.d('_checkAccountAvailabilityUseCase cancelled for: ${event.value}')},
        );

        final Hypha.Result<bool, HyphaError> result = await searchUserCancellable!.value;

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
    final UserAccountRequirement item = items.firstWhere((UserAccountRequirement item) => item.error == error);
    final int index = items.indexOf(item);
    return items.replaceImmutable(index, item.updateState(state));
  }

  FutureOr<void> _onNextPressed(_OnNextPressed event, Emitter<EditAccountState> emit) async {
    final UserAuthData auth = _cryptoAuthService.createRandomPrivateKeyAndWords();

    /// Make call to create Account
    emit(state.copyWith(command: const PageCommand.showLoadingDialog()));
    final Hypha.Result<bool, HyphaError> result = await _createAccountUseCase.run(CreateAccountInput(
      userAuthData: auth,
      accountName: state.userAccount!,
      userName: state.userName,
      inviteLinkData: event.inviteLinkData,
      image: state.image,
    ));

    if (result.isValue) {
      emit(state.copyWith(command: const PageCommand.navigateToSuccess()));
    } else {
      emit(state.copyWith(command: const PageCommand.hideLoadingDialog()));
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(result.asError!.error);
    }
  }
}
