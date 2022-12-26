part of 'import_account_bloc.dart';

@freezed
class ImportAccountState with _$ImportAccountState {
  const ImportAccountState._();

  const factory ImportAccountState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
  }) = _ImportAccountState;
}
