part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    ProfileData? profileData,
  }) = _ProfileState;
}
