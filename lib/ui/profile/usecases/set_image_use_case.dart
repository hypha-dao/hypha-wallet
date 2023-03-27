import 'dart:io';

import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class SetImageUseCase {
  final AmplifyService _amplifyService;

  SetImageUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(File image, String fileName) async {
    try {
      // ignore: unused_local_variable
      final res = await _amplifyService.setPicture(image, fileName);
      return Result.value(true);
    } catch (error) {
      print('SetBioUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetBioUseCase error $error'));
    }
  }
}
