import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

extension BlockChainErrorExtension on Object {
  String extendedBlockchainErrorMessage() {
    final DioException? thisException = (this is DioException ? this : null) as DioException?;
    if (thisException != null && thisException.response != null) {
      try {
        final data = thisException.response!.data;
        final code = data['code'];
        final errorData = data['error'] as Map;
        final what = errorData['what'];
        final details = errorData['details'] as List;
        final detailedMessage = details[0];

        return 'Error Code: $code'
            '\nWhat: $what'
            '\nMessage: $detailedMessage';
      } catch (e) {
        LogHelper.e('error during parsing of block chain error $e');
        return 'Raw error: ${thisException.response!.data}';
      }
    }

    return toString();
  }
}
// flutter: Response Data: {code: 401, message: UnAuthorized, error: {code: 3090003, name: unsatisfied_authorization, what: Provided keys, permissions, and delays do not satisfy declared authorizations, details: [{message: transaction declares authority '{"actor":"illumination","permission":"owner"}', but does not have signatures for it., file: authorization_manager.cpp, line_number: 626, method: get_required_keys}]}}
