part of 'push_notifications_bloc.dart';

@freezed
class PushNotificationsState with _$PushNotificationsState {
  const factory PushNotificationsState({
    PageCommand? command,
  }) = _PushNotificationsState;
}
