// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class SetImageUseCase {
  final AmplifyService _amplifyService;

  SetImageUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(XFile image) async {
    final File imageFile = File(image.path);
    return runFile(imageFile);
  }

  Future<Result<bool, HyphaError>> runFileName(String filePath) async {
    final File imageFile = File(filePath);
    return runFile(imageFile);
  }

  Future<Result<bool, HyphaError>> runFile(File image) async {
    try {
      final File imageFile = File(image.path);
      final fileExtension = extension(imageFile.path);
      final filename = 'avatar-${DateTime.now().toIso8601String()}$fileExtension';
      print('file size: ${imageFile.lengthSync()}');
      print('file name: $filename');

      final res = await _amplifyService.setPicture(imageFile, filename);
      return Result.value(true);
    } catch (error) {
      print('SetImageUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetImageUseCase error $error'));
    }
  }
}
