import 'package:fimber/fimber.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

const kLogQuietMode = true;
const kIsDebugNetworking = true;

/// Wrap Fimber in case we want to move out from it.
class LogHelper {
  /// Logs VERBOSE level [message]
  /// with optional exception and stacktrace
  static void v(String message, {dynamic error, StackTrace? stacktrace}) {
    Fimber.v(message, ex: error, stacktrace: stacktrace);
  }

  /// Logs DEBUG level [message]
  /// with optional exception and stacktrace
  static void d(String message, {dynamic error, StackTrace? stacktrace}) {
    Fimber.d(message, ex: error, stacktrace: stacktrace);
  }

  /// Logs INFO level [message]
  /// with optional exception and stacktrace
  static void i(String message, {dynamic error, StackTrace? stacktrace}) {
    Fimber.i(message, ex: error, stacktrace: stacktrace);
  }

  /// Logs WARNING level [message]
  /// with optional exception and stacktrace
  static void w(String message, {dynamic error, StackTrace? stacktrace}) {
    Fimber.w(message, ex: error, stacktrace: stacktrace);
  }

  /// Logs ERROR level [message]
  /// with optional exception and stacktrace
  static void e(String message, {dynamic error, StackTrace? stacktrace}) {
    Fimber.e(message, ex: error, stacktrace: stacktrace);
    FirebaseCrashlytics.instance.log('Error message $message \nStackTrace: $stacktrace');
    // Nik: I commented out below. A log should never throw an error!
    // It should log things. Not throw errors.
    // if (error != null && kDebugMode) throw error;
  }
}
