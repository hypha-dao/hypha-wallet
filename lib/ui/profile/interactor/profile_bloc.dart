import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:hypha_wallet/ui/profile/usecases/fetch_profile_use_case.dart';

part 'page_command.dart';
part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FetchProfileUseCase _fetchProfileUseCase;
  final HyphaSharedPrefs _appSharedPrefs;

  ProfileBloc(this._fetchProfileUseCase, this._appSharedPrefs) : super(const ProfileState()) {
    on<_Initial>(_initial);
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
}
