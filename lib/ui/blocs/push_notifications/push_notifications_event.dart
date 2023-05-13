part of 'push_notifications_bloc.dart';

@freezed
class PushNotificationsEvent with _$PushNotificationsEvent {
  const factory PushNotificationsEvent.clearPageCommand() = _ClearPageCommand;
  const factory PushNotificationsEvent.onMessageReceived(RemoteMessage message, bool isBackground) = _OnMessageReceived;
}
