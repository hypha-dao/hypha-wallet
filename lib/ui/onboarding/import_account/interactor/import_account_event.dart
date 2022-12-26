part of 'import_account_bloc.dart';

@freezed
class ImportAccountEvent with _$ImportAccountEvent {
  const factory ImportAccountEvent.initial() = _Initial;
  const factory ImportAccountEvent.clearPageCommand() = _ClearPageCommand;
}
