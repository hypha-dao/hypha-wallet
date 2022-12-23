import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_log_type.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:rxdart/rxdart.dart';

/// This Manager is in charge of:
/// - creating HyphaError objects
/// - populate it (optional) to be handle and displayed in our UI layer.
class ErrorHandlerManager {
  final errorsPipeline = BehaviorSubject<HyphaError>();

  ErrorHandlerManager();

  /// Handler the most common errors (Auth Expired, App Version Not Supported, Connectivity Error, etc).
  ///
  /// error: can be any kind of object.
  /// Stacktrace: used for logging.
  /// hyphaErrorConnectivity: in case the error is not a Resource type but we also need to check the connectivity status.
  /// populate: if the error needs to be handled by the ErrorHandlerBloc.
  /// logType: by default all errors are logged as warning, if this is set in critical the error is logged as error type.
  Future<HyphaError> handlerError(
    HyphaError error, {
    StackTrace? stacktrace,
    bool populate = true,
    HyphaErrorLogType logType = HyphaErrorLogType.warning,
  }) async {
    return _handlerError(
      error,
      stacktrace: stacktrace,
      populate: populate,
      logType: logType,
    );
  }

  Future<HyphaError> _handlerError(
    HyphaError error, {
    StackTrace? stacktrace,
    bool populate = true,
    HyphaErrorLogType logType = HyphaErrorLogType.warning,
  }) async {
    // Don't track Connectivity errors in our Crash Systems.
    if (error.type != HyphaErrorType.noConnectivity) {
      switch (logType) {
        case HyphaErrorLogType.none:
          // Don't log/track anything
          break;
        case HyphaErrorLogType.debug:
          LogHelper.d(error.toString(), error: error, stacktrace: stacktrace);
          break;
        case HyphaErrorLogType.warning:
          LogHelper.w(error.toString(), error: error, stacktrace: stacktrace);
          break;
        case HyphaErrorLogType.critical:
          LogHelper.e(error.toString(), error: error, stacktrace: stacktrace);
          break;
      }
    } else {
      LogHelper.d(error.toString(), error: error, stacktrace: stacktrace);
    }

    if (populate) {
      errorsPipeline.add(error);
    }

    return error;
  }
}
