part of 'send_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToSuccess() = _NavigateTo;
}
