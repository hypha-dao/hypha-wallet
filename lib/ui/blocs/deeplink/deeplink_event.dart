part of 'deeplink_bloc.dart';

@freezed
class DeeplinkEvent with _$DeeplinkEvent {
  const factory DeeplinkEvent.incomingFirebaseDeepLink(Uri link) = _IncomingFirebaseDeepLink;
  const factory DeeplinkEvent.incomingESRLink(String link) = _IncomingESRLink;
  const factory DeeplinkEvent.clearPageCommand() = _ClearPageCommand;
}
