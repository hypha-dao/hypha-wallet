import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class IPFSManager extends DioForNative {

  IPFSManager(String baseUrl) : super() {
    final loggerInterceptor = PrettyDioLogger(
      requestHeader: false,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    );

    if (kDebugMode) {
      interceptors.add(loggerInterceptor);
    }

    options.connectTimeout = Endpoints.connectionTimeout;
    options.receiveTimeout = Endpoints.receiveTimeout;
    options.responseType = ResponseType.json;

    options.baseUrl = baseUrl;
  }

  Future<Response> getImage(String imageToken) {
    return get(imageToken);
  }
}