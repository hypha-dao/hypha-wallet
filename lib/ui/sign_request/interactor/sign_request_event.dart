part of 'sign_request_bloc.dart';

@freezed
class SignRequestEvent with _$SignRequestEvent {
  const factory SignRequestEvent.initial() = _Initial;
  const factory SignRequestEvent.onThemeChanged() = _OnThemeChanged;
  const factory SignRequestEvent.clearPageCommand() = _ClearPageCommand;
  const factory SignRequestEvent.onSecureAccountTapped() = _OnSecureAccountTapped;
}
