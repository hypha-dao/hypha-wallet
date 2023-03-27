import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
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
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

part 'page_command.dart';
part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FetchProfileUseCase _fetchProfileUseCase;
  final HyphaSharedPrefs _appSharedPrefs;

  ProfileBloc(this._fetchProfileUseCase, this._appSharedPrefs) : super(const ProfileState()) {
    on<_Initial>(_initial);
    on<_OnRefresh>(_onRefresh);
    on<_SetName>(_setName);
    on<_SetBio>(_setBio);
    on<_SetAvatarImage>(_setAvatarImage);
  }

  Future<void> _initial(_Initial event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final UserProfileData? userData = await _appSharedPrefs.getUserProfileData();
    final Result<ProfileData, HyphaError> result = await _fetchProfileUseCase.run(userData?.accountName ?? '');
    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, profileData: result.asValue!.value));
    } else {
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  FutureOr<void> _onRefresh(_OnRefresh event, Emitter<ProfileState> emit) {
    add(const ProfileEvent.initial());
  }

  FutureOr<void> _setName(_SetName event, Emitter<ProfileState> emit) async {
    print('set name to ${event.name}');
    emit(state.copyWith(pageState: PageState.loading));

    final result = await SetNameUseCase(GetIt.I.get<AmplifyService>()).run(event.name);

    print("result $result");

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success));
    } else {
      // TODO(gguij): Error snack bar when set name fails
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  FutureOr<void> _setBio(_SetBio event, Emitter<ProfileState> emit) async {
    print("set bio to ${event.bio}");

    emit(state.copyWith(pageState: PageState.loading));

    final result = await SetBioUseCase(GetIt.I.get<AmplifyService>()).run(event.bio);

    print("result $result");

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success));
    } else {
      // TODO(gguij): Error snack bar when set bio fails
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  FutureOr<void> _setAvatarImage(_SetAvatarImage event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    // getting a directory path for saving
    // final duplicateFilePath = (await getApplicationDocumentsDirectory()).path;
    // final fileName = basename(event.image.path);
    // final localPath = '$duplicateFilePath/$fileName';
    // print('local file path: $localPath');
    // await event.image.saveTo(localPath);
    // final imageFile = File(localPath);

    print('set avatar to ${event.image}');
    print('local file path: ${event.image.path}');
    final File imageFile = File(event.image.path);
    print('file size: ${imageFile.lengthSync()}');
    final fileExtension = extension(imageFile.path);
    final filename = 'avatar-${DateTime.now().toIso8601String()}$fileExtension';
    // final filename = 'avatar-test$fileExtension'; // DEBUG
    print('file name: $filename');

    final result = await SetImageUseCase(GetIt.I.get<AmplifyService>()).run(imageFile, filename);

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success));
    } else {
      // TODO(gguij): Error snack bar when set bio fails
      print('Error setting avatar image: ${result.asError!.error}');
      emit(state.copyWith(pageState: PageState.failure));
    }
  }
}
