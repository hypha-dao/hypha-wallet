import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/seeds_esr.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;

class ParseQRCodeUseCase extends InputUseCase<HResult.Result<ScanQrCodeResultData, HyphaError>, ParseQrCodeInput> {
  ParseQRCodeUseCase();

  @override
  Future<HResult.Result<ScanQrCodeResultData, HyphaError>> run(ParseQrCodeInput input) async {
    final qrCodeValidationResult = await _validateQrCode(accountName: input.accountName, scanResult: input.scanResult);

    if (qrCodeValidationResult.isValue) {
      return HResult.Result.value(qrCodeValidationResult.asValue!.value);
    } else {
      return HResult.Result.error(qrCodeValidationResult.asError!.error as HyphaError);
    }
  }
}

Future<Result<ScanQrCodeResultData>> _validateQrCode({required String scanResult, required String accountName}) async {
  if (scanResult.isEmpty) {
    return Result.error(HyphaError.generic("We don't recognize this QR Code"));
  } else {
    final splitUri = scanResult.split(':');
    final scheme = splitUri[0];
    if (scheme != 'esr' && scheme != 'web+esr') {
      print(' _validateQrCode : Invalid QR code');
      return Result.error(HyphaError.generic("We don't recognize this QR Code"));
    }

    final SeedsESR esr = SeedsESR(uri: scanResult);
    return esr.resolve(account: accountName).then((value) => esr.processResolvedRequest()).catchError((onError) {
      LogHelper.d('processQrCode : Error processing QR code $onError');
      return Result.error(HyphaError.generic('Error processing QR code'));
    });
  }
}

class ParseQrCodeInput {
  final String scanResult;
  final String accountName;

  ParseQrCodeInput({required this.scanResult, required this.accountName});
}
