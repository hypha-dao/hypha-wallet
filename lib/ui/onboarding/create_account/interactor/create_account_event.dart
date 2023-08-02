part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.initial(Network network) = _Initial;
  const factory CreateAccountEvent.clearPageCommand() = _ClearPageCommand;
  const factory CreateAccountEvent.onNextTapped(InviteLinkData inviteLinkData) = _OnNextTapped;
}
