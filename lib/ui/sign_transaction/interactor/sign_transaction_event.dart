part of 'sign_transaction_bloc.dart';

@freezed
class SignTransactionEvent with _$SignTransactionEvent {
  const factory SignTransactionEvent.initial() = _Initial;
  const factory SignTransactionEvent.onUserSlideCompleted() = _OnUserSlideCompleted;
  const factory SignTransactionEvent.onUserSlideCanceled() = _OnUserSlideCanceled;
  const factory SignTransactionEvent.clearPageCommand() = _ClearPageCommand;
}
