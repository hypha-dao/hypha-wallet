part of 'home_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToTransactionDetails(QrCodeData data) = _NavigateToTransactionDetails;
}
