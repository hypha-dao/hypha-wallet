import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GraphQLService {
  final NetworkingManager _networkingManager;
  final RemoteConfigService _remoteConfigService;

  GraphQLService(this._networkingManager, this._remoteConfigService);

  Future<String> _getJWTAccessToken(Network network) async {
    try {
      final url = _remoteConfigService.graphQlJWTEndpoint(network: network);
      final response = await Dio().get(url);
      final accessJWT = response.data['accessJWT'];
      return accessJWT;
    } catch (error) {
      LogHelper.e('Error fetching JWT token', error: error);
      throw HyphaError.fromError(error);
    }
  }

  Future<Result<Map<String, dynamic>, HyphaError>> graphQLQuery({
    required Network network,
    required String query,
  }) async {
    try {
      final url = _remoteConfigService.graphQlEndpoint(network: network);
      final jwtToken = await _getJWTAccessToken(network);
      final res = await _networkingManager.post(
        url,
        data: query,
        options: Options(
          headers: {
            'X-Dgraph-AccessToken': jwtToken,
          },
        ),
      );
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
