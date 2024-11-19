import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkingManager extends DioForNative {
  NetworkingManager(String baseUrl) : super() {
    final loggerInterceptor = PrettyDioLogger(
      requestHeader: false,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
      error: true,
      compact: true,
    );

    if (kIsDebugNetworking) {
      interceptors.add(loggerInterceptor);
    }

    options.connectTimeout = Endpoints.connectionTimeout;
    options.receiveTimeout = Endpoints.receiveTimeout;
    options.responseType = ResponseType.json;

    options.baseUrl = baseUrl;
  }
}
