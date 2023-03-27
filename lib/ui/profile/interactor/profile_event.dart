part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial() = _Initial;
  const factory ProfileEvent.onRefresh() = _OnRefresh;
  const factory ProfileEvent.clearPageCommand() = _ClearPageCommand;
  const factory ProfileEvent.setName(String name) = _SetName;
  const factory ProfileEvent.setBio(String bio) = _SetBio;
  const factory ProfileEvent.setAvatarImage(XFile image) = _SetAvatarImage;
}
