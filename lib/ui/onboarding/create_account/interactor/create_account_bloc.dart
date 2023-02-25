import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/crypto_auth_service.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as Hypha;
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/create_account_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/find_available_account_use_case.dart';
import 'package:image_picker/image_picker.dart';

part 'create_account_bloc.freezed.dart';
part 'create_account_event.dart';
part 'create_account_state.dart';
part 'page_command.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final FindAvailableAccountUseCase _findAvailableAccountUseCase;
  final CryptoAuthService _cryptoAuthService;
  final CreateAccountUseCase _createAccountUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  CreateAccountBloc(
    this._cryptoAuthService,
    this._createAccountUseCase,
    this._findAvailableAccountUseCase,
    this._errorHandlerManager,
    XFile? image,
    String userName,
  ) : super(CreateAccountState(userName: userName, image: image)) {
    on<_Initial>(_initial);
    on<_OnNextTapped>(_onNextTapped);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(pageState: PageState.success, command: const PageCommand.showLoadingDialog()));
    final Hypha.Result<String, HyphaError> result = await _findAvailableAccountUseCase.run(state.userName);
    if (result.isValue) {
      emit(state.copyWith(
        pageState: PageState.success,
        userAccount: result.asValue!.value,
        command: const PageCommand.hideLoadingDialog(),
      ));
    } else {
      emit(state.copyWith(command: const PageCommand.hideLoadingDialog()));
      _errorHandlerManager.handlerError(result.asError!.error);
    }
  }

  FutureOr<void> _onNextTapped(_OnNextTapped event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(command: const PageCommand.showLoadingDialog()));

    final UserAuthData auth = _cryptoAuthService.createRandomPrivateKeyAndWords();

    /// Make call to create Account
    final Hypha.Result<bool, HyphaError> result = await _createAccountUseCase.run(Input(
      userAuthData: auth,
      accountName: state.userAccount!,
      userName: state.userName,
      inviteLinkData: event.inviteLinkData,
    ));

    if (result.isValue) {
      emit(state.copyWith(command: const PageCommand.navigateToSuccess()));
    } else {
      _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(command: const PageCommand.hideLoadingDialog()));
    }
  }
}
