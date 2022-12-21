part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.initial() = _Initial;
  const factory CreateAccountEvent.clearPageCommand() = _ClearPageCommand;
}
