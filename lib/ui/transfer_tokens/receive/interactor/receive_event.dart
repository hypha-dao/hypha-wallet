part of 'receive_bloc.dart';

@freezed
class ReceiveEvent with _$ReceiveEvent {
  const factory ReceiveEvent.initial() = _Initial;
  const factory ReceiveEvent.onRefresh() = _OnRefresh;
  const factory ReceiveEvent.clearPageCommand() = _ClearPageCommand;
  const factory ReceiveEvent.onKeypadTapped(KeypadKey tappedKey) = _OnKeypadTapped;
  const factory ReceiveEvent.onMemoEntered(String? memo) = _OnMemoEntered;
  const factory ReceiveEvent.onNextTapped() = _OnNextTapped;
}
