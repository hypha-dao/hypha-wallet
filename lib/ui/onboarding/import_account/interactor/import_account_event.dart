part of 'import_account_bloc.dart';

@freezed
class ImportAccountEvent with _$ImportAccountEvent {
  const factory ImportAccountEvent.initial() = _Initial;
  const factory ImportAccountEvent.clearPageCommand() = _ClearPageCommand;
  const factory ImportAccountEvent.onWordChanged(String word, int index) = _OnWordChange;
  const factory ImportAccountEvent.onActionButtonTapped() = _OnActionButtonTapped;
  const factory ImportAccountEvent.onUserPastedWords() = _OnUserPastedWords;
  const factory ImportAccountEvent.onPrivateKeyChanged(String privateKey) = _OnPrivateKeyChanged;
  const factory ImportAccountEvent.findAccountByKey(String privateKey) = _FindAccountByKey;
  const factory ImportAccountEvent.onAccountSelected(UserProfileData accountData) = _OnAccountSelected;
}
