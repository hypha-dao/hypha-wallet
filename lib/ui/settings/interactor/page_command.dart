part of 'settings_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.showSecurityPopup({
    required String title,
    required String subtitle,
    required String rationale,
    required String mainButtonText,
    required String image,
    required List<String> words,
    required String privateKey,
  }) = _ShowSecurityPopup;
}
