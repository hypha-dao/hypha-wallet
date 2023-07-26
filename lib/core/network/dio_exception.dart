import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioException.requestCancelled:
        message = 'Request to API server was cancelled';
        break;
      case DioException.connectionTimeout:
        message = 'Connection timeout with API server';
        break;
      case DioException.receiveTimeout:
        message = 'Receive timeout in connection with API server';
        break;
      case DioException.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioException.sendTimeout:
        message = 'Send timeout in connection with API server';
        break;
      default:
        if (dioError.message?.contains('SocketException') == true) {
          message = 'No Internet';
          break;
        }
        message = 'Something went wrong';
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return error['message'];
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
