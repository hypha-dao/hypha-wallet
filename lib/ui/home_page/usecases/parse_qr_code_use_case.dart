import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class ParseQRCodeUseCase extends InputUseCase<Result<QrCodeData, HyphaError>, String> {
  ParseQRCodeUseCase();

  @override
  Future<Result<QrCodeData, HyphaError>> run(String input) async {
    return Future.delayed(Duration(seconds: 2))
        .then((value) => Result.value(QrCodeData(rawData: input, otherStuff: 'TODO(nik): Parse data and send back')));
  }
}

class QrCodeData {
  final String rawData;
  final String otherStuff;

  QrCodeData({required this.rawData, required this.otherStuff});
}
