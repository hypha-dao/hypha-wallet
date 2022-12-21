part of 'edit_account_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateTo() = _NavigateTo;
}
