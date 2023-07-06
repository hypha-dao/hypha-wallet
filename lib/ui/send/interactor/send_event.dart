part of 'send_bloc.dart';

@freezed
class SendEvent with _$SendEvent {
  const factory SendEvent.initial() = _Initial;
  const factory SendEvent.onRefresh() = _OnRefresh;
  const factory SendEvent.clearPageCommand() = _ClearPageCommand;
  const factory SendEvent.onPercentageTapped(AmountPercentage amountPercentage) = _OnPercentageTapped;
  const factory SendEvent.onKeypadTapped(KeypadKey tappedKey) = _OnKeypadTapped;
  const factory SendEvent.onMemoEntered(String? memo) = _OnMemoEntered;
}
