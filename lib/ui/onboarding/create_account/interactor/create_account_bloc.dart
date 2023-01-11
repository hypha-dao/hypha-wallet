import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/crypto_auth_service.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as Hypha;
import 'package:hypha_wallet/ui/onboarding/usecases/check_account_availability_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/create_account_use_case.dart';
import 'package:image_picker/image_picker.dart';

part 'create_account_bloc.freezed.dart';
part 'create_account_event.dart';
part 'create_account_state.dart';
part 'page_command.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final CheckAccountAvailabilityUseCase _checkAccountAvailabilityUseCase;
  final CryptoAuthService _cryptoAuthService;
  final CreateAccountUseCase _createAccountUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  CreateAccountBloc(
    this._cryptoAuthService,
    this._createAccountUseCase,
    this._checkAccountAvailabilityUseCase,
    this._errorHandlerManager,
    XFile? image,
    String userName,
  ) : super(CreateAccountState(userName: userName, image: image)) {
    on<_Initial>(_initial);
    on<_OnNextTapped>(_onNextTapped);
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

  FutureOr<void> _onNextTapped(_OnNextTapped event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(command: PageCommand.showLoadingDialog()));

    UserAuthData auth = _cryptoAuthService.createRandomPrivateKeyAndWords();

    /// Make call to create Account
    Hypha.Result<bool, HyphaError> result = await _createAccountUseCase.run(Input(
      userAuthData: auth,
      accountName: state.userAccount!,
      userName: state.userName,
    ));

    if (result.isValue) {
      emit(state.copyWith(command: PageCommand.navigateToSuccess()));
    } else {
      _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(command: PageCommand.hideLoadingDialog()));
    }
  }
}
