part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    ProfileData? profileData,
    @Default(false) bool doesNotHaveProfile,
    @Default(false) bool showUpdateBioLoading,
    @Default(false) bool showUpdateImageLoading,
    @Default(false) bool showUpdateNameLoading,
  }) = _ProfileState;
}
