import 'package:fimber/fimber.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class FirebaseCrashReportingTree extends LogTree {
  //Only Log Warnings and Exceptions
  static const List<String> defaultLevels = ['W', 'E'];
  final List<String> logLevels;

  @override
  List<String> getLevels() => logLevels;

  FirebaseCrashReportingTree({this.logLevels = defaultLevels});

  @override
  void log(String level, String message, {String? tag, dynamic ex, StackTrace? stacktrace}) {
    final crashlytics = FirebaseCrashlytics.instance;

    if (level == 'W') {
      // Is a warning
      crashlytics.log(message);
    } else if (level == 'E') {
      // Is an error
      crashlytics.recordError(ex, stacktrace);
    }
  }
}
