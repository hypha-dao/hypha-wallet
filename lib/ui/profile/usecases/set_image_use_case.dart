// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class SetImageUseCase {
  final AmplifyService _amplifyService;
  final ProfileLoginUseCase _profileLoginUseCase;

  SetImageUseCase(this._amplifyService, this._profileLoginUseCase);

  Future<Result<bool, HyphaError>> run(XFile image, String accountName) async {
    final File imageFile = File(image.path);
    return runFile(imageFile, accountName);
  }

  Future<Result<bool, HyphaError>> runFileName(String filePath, String accountName) async {
    final File imageFile = File(filePath);
    return runFile(imageFile, accountName);
  }

  Future<Result<bool, HyphaError>> runFile(File image, String accountName) async {
    try {
      final Result<bool, HyphaError> loginResult = await _profileLoginUseCase.run(accountName);

      if (loginResult.isValue) {
        final File imageFile = File(image.path);
        final fileExtension = extension(imageFile.path);
        final filename = 'avatar-${DateTime.now().toIso8601String()}$fileExtension';
        print('file size: ${imageFile.lengthSync()}');
        print('file name: $filename');

        final res = await _amplifyService.setPicture(imageFile, filename);
        return Result.value(true);
      } else {
        print('SetImageUseCase error login Failed ');
        return Result.error(HyphaError.api('SetImageUseCase error: Login Failed'));
      }
    } catch (error) {
      print('SetImageUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetImageUseCase error $error'));
    }
  }
}
