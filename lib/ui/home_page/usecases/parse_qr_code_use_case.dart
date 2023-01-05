import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class ParseQRCodeUseCase extends InputUseCase<Result<QrCodeData, HyphaError>, String> {
  ParseQRCodeUseCase();

  @override
  Future<Result<QrCodeData, HyphaError>> run(String input) async {
    var validationError = _validateQrCode(input);

    if (validationError != null) {
      return Future.delayed(Duration(seconds: 2)).then((value) => Result.error(validationError));
    } else {
      return Future.delayed(Duration(seconds: 2))
          .then((value) => Result.value(QrCodeData(rawData: input, otherStuff: 'TODO(nik): Parse data and send back')));
    }
  }
}

HyphaError? _validateQrCode(String input) {
  if (input.isEmpty) {
    return HyphaError.generic("We don't recognize this QR Code");
    // TODO(gguij): Add Logic to validate QR code here
  } else if (false) {
    return HyphaError.generic("We don't recognize this QR Code");
  } else
    return null;
}

class QrCodeData {
  final String rawData;
  final String otherStuff;

  QrCodeData({required this.rawData, required this.otherStuff});
}
