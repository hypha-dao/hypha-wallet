import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkingManager extends DioForNative {
  NetworkingManager(String baseUrl) : super() {
    final retryInterceptor = RetryInterceptor(
      dio: this,
      logPrint: (message) {
        FirebaseCrashlytics.instance.log('Retry call: $message');
        LogHelper.d('Retry call: $message');
      },
      retries: 1, // retry count
      retryDelays: const [
        Duration(seconds: 1), // wait 1 sec before first retry
      ],
    );

    final loggerInterceptor = PrettyDioLogger(
      requestHeader: false,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
      error: true,
      compact: true,
    );

    interceptors.add(retryInterceptor);
    if (kIsDebugNetworking) {
      interceptors.add(loggerInterceptor);
    }

    options.connectTimeout = Endpoints.connectionTimeout;
    options.receiveTimeout = Endpoints.receiveTimeout;
    options.responseType = ResponseType.json;

    options.baseUrl = baseUrl;
  }
}
