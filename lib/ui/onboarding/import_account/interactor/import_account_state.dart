part of 'import_account_bloc.dart';

@freezed
class ImportAccountState with _$ImportAccountState {
  const ImportAccountState._();

  const factory ImportAccountState({
    @Default(PageState.initial) PageState pageState,
    @Default(AccountImportType.words) AccountImportType accountImportType,
    PageCommand? command,
    @Default({}) final Map<int, String> userEnteredWords,
    @Default(null) final String? accountKey,
    @Default(false) bool isPartialLoading,
    @Default([]) List<UserProfileData> accounts,
  }) = _ImportAccountState;

  bool get areAllWordsEntered => userEnteredWords.length == 12 && !userEnteredWords.containsValue('');
}
