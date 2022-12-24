part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _Initial;
  const factory HomeEvent.clearPageCommand() = _ClearPageCommand;
  const factory HomeEvent.onQRCodeScanned(String value) = _OnQRCodeScanned;
}
