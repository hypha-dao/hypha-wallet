import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/seeds_esr.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;

class ParseQRCodeUseCase extends InputUseCase<HResult.Result<ScanQrCodeResultData, HyphaError>, ParseESRLinkInput> {
  final AuthRepository _authRepository;
  ParseQRCodeUseCase(this._authRepository);

  @override
  Future<HResult.Result<ScanQrCodeResultData, HyphaError>> run(ParseESRLinkInput input) async {
    final userData = _authRepository.authDataOrCrash;
    final qrCodeValidationResult =
        await _validateQrCode(accountName: userData.userProfileData.accountName, scanResult: input.esrLink);

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
    if (!SigningRequestManager.isValidESRScheme(scanResult)) {
      print(' _validateQrCode : Invalid QR code');
      return Result.error(HyphaError.generic("We don't recognize this QR Code"));
    }

    final SeedsESR esr = SeedsESR(uri: scanResult);
    try {
      await esr.resolve(account: accountName);
      LogHelper.d('processQrCode : resolved completed');
      return esr.processResolvedRequest();
    } catch (error) {
      LogHelper.d('processQrCode : Error processing QR code $error');
      return Result.error(HyphaError.generic('Error processing QR code'));
    }
  }
}

class ParseESRLinkInput {
  final String esrLink;

  ParseESRLinkInput({required this.esrLink});
}
