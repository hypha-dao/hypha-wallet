part of 'edit_account_bloc.dart';

@freezed
class EditAccountEvent with _$EditAccountEvent {
  const factory EditAccountEvent.initial() = _Initial;
  const factory EditAccountEvent.clearPageCommand() = _ClearPageCommand;
}
