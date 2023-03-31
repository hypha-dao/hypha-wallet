part of 'profile_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToSuccess() = _NavigateToSuccess;
  const factory PageCommand.navigateBack() = _NavigateBack;
}
