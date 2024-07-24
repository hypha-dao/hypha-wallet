import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GraphQLService {
  final NetworkingManager _networkingManager;

  GraphQLService(this._networkingManager);

  Future<Result<Map<String, dynamic>, HyphaError>> query({
    required String url,
    required String query,
  }) async {
    try {
      final res = await _networkingManager.post(url, data: query);
      final Map<String, dynamic> response = res.data;
      return Result.value(response);
    } catch (error, stackTrace) {
      LogHelper.e('Error accessing graphQL', stacktrace: stackTrace, error: error);
      if (error is DioException) {
        final dioError = error;
        LogHelper.d('message: ${dioError.message}');
        LogHelper.d('status code: ${dioError.response?.statusCode}');
        LogHelper.d('message: ${dioError.response?.statusMessage}');
        LogHelper.d('dioError: $dioError');
      }

      LogHelper.e('Error accessing graphQL');
      LogHelper.e(error.toString());
      return Result.error(HyphaError.fromError(error));
    }
  }
}
