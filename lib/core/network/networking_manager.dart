import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkingManager extends DioForNative {
  static final bool _isDebugNetworking = false;

  NetworkingManager(String baseUrl) : super() {
    if (_isDebugNetworking) {
      // Add Logs Interceptor
      interceptors.add(PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true));
    }

    options.connectTimeout = Endpoints.connectionTimeout;
    options.receiveTimeout = Endpoints.receiveTimeout;
    options.responseType = ResponseType.json;

    options.baseUrl = baseUrl;
  }
}
