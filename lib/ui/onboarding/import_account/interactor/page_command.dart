part of 'import_account_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToAccountFound(List<String> accounts) = _NavigateToAccountFound;
}
