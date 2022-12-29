part of 'import_account_bloc.dart';

@freezed
class ImportAccountState with _$ImportAccountState {
  const ImportAccountState._();

  const factory ImportAccountState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default({}) final Map<int, String> userEnteredWords,
    @Default(false) bool isPartialLoading,
    @Default([]) List<String> accounts,
  }) = _ImportAccountState;

  bool get areAllWordsEntered => userEnteredWords.length == 12 && !userEnteredWords.containsValue('');
}
