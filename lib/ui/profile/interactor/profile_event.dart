part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial() = _Initial;
  const factory ProfileEvent.clearPageCommand() = _ClearPageCommand;
}
