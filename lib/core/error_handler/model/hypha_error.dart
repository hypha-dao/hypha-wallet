import 'package:hypha_wallet/core/error_handler/model/hypha_error_severity.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';

class HyphaError {
  final String message;
  final HyphaErrorType type;
  final HyphaErrorSeverity severity;
  final String? actionText;
  final Function? action;

  bool get isNotFoundError => type == HyphaErrorType.notFound;

  HyphaError({
    required this.message,
    required this.type,
    this.severity = HyphaErrorSeverity.normal,
    this.actionText,
    this.action,
  });

  factory HyphaError.tokenExpired() => HyphaError(message: 'Session Expired', type: HyphaErrorType.tokenExpired);

  factory HyphaError.api(String message) => HyphaError(message: message, type: HyphaErrorType.api);

  factory HyphaError.generic(String message) => HyphaError(message: message, type: HyphaErrorType.generic);

  factory HyphaError.notFound(String message) => HyphaError(message: message, type: HyphaErrorType.notFound);

  factory HyphaError.unknown(String? message) {
    return HyphaError(message: message ?? 'Unknown Error', type: HyphaErrorType.unknown);
  }

  @override
  String toString() => '$message [Error Type: $type]';
}
