import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:hypha_wallet/ui/profile/usecases/fetch_profile_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/remove_avatar_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_bio_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_image_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_name_use_case.dart';
import 'package:image_picker/image_picker.dart';

part 'page_command.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FetchProfileUseCase _fetchProfileUseCase;
  final AuthRepository _authRepository;
  final SetNameUseCase _setNameUseCase;
  final SetImageUseCase _setImageUseCase;
  final SetBioUseCase _setBioUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final RemoveAvatarUseCase _removeAvatarUseCase;

  ProfileBloc(
    this._fetchProfileUseCase,
    this._authRepository,
    this._setNameUseCase,
    this._setImageUseCase,
    this._setBioUseCase,
    this._errorHandlerManager,
    this._removeAvatarUseCase,
  ) : super(const ProfileState()) {
    on<_Initial>(_initial);
    on<_OnRefresh>(_onRefresh);
    on<_SetName>(_setName);
    on<_SetBio>(_setBio);
    on<_SetAvatarImage>(_setAvatarImage);
    on<_OnRemoveImageTapped>(_onRemoveImageTapped);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final userData = _authRepository.authDataOrCrash;
    final Result<ProfileData, HyphaError> result = await _fetchProfileUseCase.run(userData.userProfileData);
    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, profileData: result.asValue!.value));
    } else {
      // if loading fails, show saved user data.
      final profileData = ProfileData(
        name: userData.userProfileData.userName,
        account: userData.userProfileData.accountName,
        network: userData.userProfileData.network,
        daos: [],
      );
      emit(state.copyWith(pageState: PageState.success, profileData: profileData));
    }
  }

  FutureOr<void> _onRefresh(_OnRefresh event, Emitter<ProfileState> emit) {
    add(const ProfileEvent.initial());
  }

  FutureOr<void> _setName(_SetName event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(showUpdateBioLoading: true));
    final result = await _setNameUseCase.run(accountName: state.profileData!.account, name: event.name);
    if (result.isValue) {
      emit(
        state.copyWith(
          command: const PageCommand.navigateBack(),
          showUpdateBioLoading: false,
          profileData: state.profileData?.updateName(event.name),
        ),
      );
    } else {
      emit(state.copyWith(showUpdateBioLoading: false, command: const PageCommand.navigateBack()));
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(HyphaError.generic('Error saving Name, Please try again later'));
    }
  }

  FutureOr<void> _setBio(_SetBio event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(showUpdateBioLoading: true));
    final result = await _setBioUseCase.run(
      SetBioUseCaseInput(accountName: state.profileData!.account, profileBio: event.bio),
    );
    if (result.isValue) {
      emit(
        state.copyWith(
          command: const PageCommand.navigateBack(),
          showUpdateBioLoading: false,
          profileData: state.profileData?.updateBio(event.bio),
        ),
      );
    } else {
      emit(state.copyWith(showUpdateBioLoading: false, command: const PageCommand.navigateBack()));
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(HyphaError.generic('Error saving Bio, Please try again later'));
    }
  }

  FutureOr<void> _setAvatarImage(_SetAvatarImage event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(showUpdateImageLoading: true));
    final result = await _setImageUseCase.run(event.image, state.profileData!.account);
    final userData = _authRepository.authDataOrCrash;

    if (result.isValue) {
      final Result<ProfileData, HyphaError> profileResult = await _fetchProfileUseCase.run(userData.userProfileData);
      if (profileResult.isValue) {
        final profile = profileResult.asValue!.value;
        emit(state.copyWith(showUpdateImageLoading: false, profileData: profile));
      } else {
        emit(state.copyWith(showUpdateImageLoading: false));
      }
    } else {
      emit(state.copyWith(showUpdateImageLoading: false));
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(HyphaError.generic('Error saving Image, Please try again later'));
    }
  }

  FutureOr<void> _onRemoveImageTapped(_OnRemoveImageTapped event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(showUpdateImageLoading: true));
    final result = await _removeAvatarUseCase.run(state.profileData!.account);
    if (result.isValue) {
      emit(
        state.copyWith(
          showUpdateImageLoading: false,
          profileData: state.profileData?.removeAvatar(),
        ),
      );
    } else {
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(HyphaError.generic('Error Removing avatar, Please try again later'));
    }
  }
}
