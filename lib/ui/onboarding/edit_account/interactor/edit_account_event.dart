part of 'edit_account_bloc.dart';

@freezed
class EditAccountEvent with _$EditAccountEvent {
  const factory EditAccountEvent.initial() = _Initial;
  const factory EditAccountEvent.onNextPressed(InviteLinkData inviteLinkData) = _OnNextPressed;
  const factory EditAccountEvent.clearPageCommand() = _ClearPageCommand;
  const factory EditAccountEvent.onAccountChange(String value, Network network) = _OnAccountChange;
}
