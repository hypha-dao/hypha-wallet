import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:hypha_wallet/ui/profile/usecases/fetch_profile_use_case.dart';
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
  final HyphaSharedPrefs _appSharedPrefs;
  final SetNameUseCase _setNameUseCase;
  final SetImageUseCase _setImageUseCase;
  final SetBioUseCase _setBioUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  ProfileBloc(
    this._fetchProfileUseCase,
    this._appSharedPrefs,
    this._setNameUseCase,
    this._setImageUseCase,
    this._setBioUseCase,
    this._errorHandlerManager,
  ) : super(const ProfileState()) {
    on<_Initial>(_initial);
    on<_OnRefresh>(_onRefresh);
    on<_SetName>(_setName);
    on<_SetBio>(_setBio);
    on<_SetAvatarImage>(_setAvatarImage);
  }

  Future<void> _initial(_Initial event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final UserProfileData? userData = await _appSharedPrefs.getUserProfileData();
    if (userData != null) {
      final Result<ProfileData, HyphaError> result = await _fetchProfileUseCase.run(userData.accountName);
      if (result.isValue) {
        emit(state.copyWith(pageState: PageState.success, profileData: result.asValue!.value));
      } else {
        // if loading fails, show saved user data.
        final profileData = ProfileData(
          name: userData.userName,
          account: userData.accountName,
        );
        emit(state.copyWith(pageState: PageState.success, profileData: profileData));
      }
    } else {
      print('Error - no user data');
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  FutureOr<void> _onRefresh(_OnRefresh event, Emitter<ProfileState> emit) {
    add(const ProfileEvent.initial());
  }

  FutureOr<void> _setName(_SetName event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final result = await _setNameUseCase.run(event.name);
    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success));
    } else {
      // TODO(gguij): Error snack bar when set name fails
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  FutureOr<void> _setBio(_SetBio event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(showUpdateBioLoading: true));
    final result = await _setBioUseCase.run(event.bio);
    if (result.isValue) {
      emit(
        state.copyWith(
          command: const PageCommand.navigateBack(),
          showUpdateBioLoading: false,
          profileData: state.profileData?.updateBio(event.bio),
        ),
      );
    } else {
      emit(state.copyWith(showUpdateBioLoading: false));
      _errorHandlerManager.handlerError(HyphaError.generic('Error saving Bio, Please try again later'));
    }
  }

  FutureOr<void> _setAvatarImage(_SetAvatarImage event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final result = await _setImageUseCase.run(event.image);

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success));
    } else {
      // TODO(gguij): Error snack bar when set image fails
      print('Error setting avatar image: ${result.asError!.error}');
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}
