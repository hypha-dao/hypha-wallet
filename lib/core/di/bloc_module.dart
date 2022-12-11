part of 'di_setup.dart';

void _registerBlocsModule() {
  /// Global Blocs
  _registerFactory(() => AuthenticationBloc(
        _getIt<AuthRepository>(),
        _getIt<HyphaSharedPrefs>(),
      ));

  // _registerFactoryWithParams<MoodCheckInBloc, MoodCheckInArguments, void>((moodCheckInArgs, _) => MoodCheckInBloc(
  //       moodCheckInArgs,
  //       _getIt<UpdateDailyMoodUseCase>(),
  //       _getIt<PostDailyMoodUseCase>(),
  //       _getIt<AnalyticsManager>(),
  //     ));
}
