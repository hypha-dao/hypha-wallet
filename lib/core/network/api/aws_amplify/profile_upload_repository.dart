import 'dart:convert';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/profile/usecases/initialize_profile_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/ppp_sign_up_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_image_use_case.dart';

class ProfileUploadRepository {
  final PPPSignUpUseCase _pPPSignUpUseCase;
  final ProfileLoginUseCase _profileLoginUseCase;
  final InitializeProfileUseCase _initializeProfileUseCase;
  final SetImageUseCase _setImageUseCase;

  final HyphaSharedPrefs prefs;
  final maxTries = 5;
  var isProcessing = false;
  ProfileUploadRepository(
    this.prefs,
    this._pPPSignUpUseCase,
    this._profileLoginUseCase,
    this._initializeProfileUseCase,
    this._setImageUseCase,
  );

  void scheduleUpload({required String accountName, required String userName, String? fileName}) async {
    final uploader = SignupData(accountName: accountName, userName: userName, fileName: fileName);
    prefs.setSignupDataUploader(uploader);
  }

  Future<void> start({int tries = 0}) async {
    if (tries >= maxTries) {
      print('permanent failure uploading: $tries');
      isProcessing = false;
      return;
    }
    isProcessing = true;
    final signupData = await prefs.getSignupDataUploader();
    if (signupData != null) {
      try {
        await upload(signupData);
      } catch (error) {
        print('upload error - will try again $error');
      } finally {
        if (signupData.isComplete()) {
          prefs.setSignupDataUploader(null);
          isProcessing = false;
        } else {
          print('not complete - try again in 20 seconds');
          prefs.setSignupDataUploader(signupData);
          final int retries = tries + 1;
          Future.delayed(const Duration(seconds: 20), () => start(tries: retries));
        }
      }
    }
  }

  Future<bool> upload(SignupData data) async {
    while (data.step < data.numSteps) {
      switch (data.step) {
        case 0:
          final signupResult = await _pPPSignUpUseCase.run(data.accountName);
          print('Signup success: ${signupResult.asValue?.value}');
          data.step++;
          break;

        case 1:
          final loginResult = await _profileLoginUseCase.run(data.accountName);
          print('Login success: ${loginResult.asValue?.value}');
          data.step++;
          break;

        case 2:
          final initResult = await _initializeProfileUseCase.run(accountName: data.accountName, name: data.userName);
          print('initResult: ${initResult.asValue?.value}');
          data.step++;
          break;

        case 3:
          if (data.fileName != null) {
            final setImageResult = await _setImageUseCase.runFileName(data.fileName!);
            print('setImageResult: ${setImageResult.asValue?.value}');
          }
          data.step++;
          break;

        default:
          break;
      }
    }
    return true;
  }

  Future<bool> isComplete() async {
    final signupData = await prefs.getSignupDataUploader();
    return signupData == null || signupData.isComplete();
  }
}

class SignupData {
  final String accountName;
  final String userName;
  final String? fileName;
  int step;
  final numSteps = 4;

  SignupData({
    required this.accountName,
    required this.userName,
    required this.fileName,
    this.step = 0,
  });

  bool isComplete() {
    return step >= numSteps;
  }

  factory SignupData.fromJsonString(String jsonString) {
    final jsonMap = jsonDecode(jsonString);
    final accountName = jsonMap['accountName'];
    final userName = jsonMap['userName'];
    final fileName = jsonMap['fileName'];
    final step = jsonMap['step'];
    final stateMachine = SignupData(
      accountName: accountName,
      userName: userName,
      fileName: fileName,
      step: step,
    );
    stateMachine.step = step;
    return stateMachine;
  }

  String toJsonString() {
    final jsonMap = {
      'accountName': accountName,
      'userName': userName,
      'fileName': fileName,
      'step': step,
    };
    return jsonEncode(jsonMap);
  }

  @override
  String toString() {
    return toJsonString();
  }
}
