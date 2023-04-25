import 'dart:convert';

import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/usecases/initialize_profile_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/ppp_sign_up_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_image_use_case.dart';

///
/// Background upload of profile data
/// Tries a total of 5 times to upload initial data
/// Stores data in preferences
///
/// Allows continuation of upload when upload failed
///
class ProfileUploadRepository {
  final PPPSignUpUseCase _pPPSignUpUseCase;
  final ProfileLoginUseCase _profileLoginUseCase;
  final InitializeProfileUseCase _initializeProfileUseCase;
  final SetImageUseCase _setImageUseCase;
  final HyphaSharedPrefs prefs;

  bool isProcessing = false;
  int maxTries = 5;
  Duration retryDelay = const Duration(seconds: 20);

  ProfileUploadRepository(
    this.prefs,
    this._pPPSignUpUseCase,
    this._profileLoginUseCase,
    this._initializeProfileUseCase,
    this._setImageUseCase,
  );

  ///
  /// Schedule a new data set for upload
  /// - call start() after this
  ///
  Future<void> scheduleUpload({required String accountName, required String userName, String? fileName}) async {
    final data = SignupData(accountName: accountName, userName: userName, fileName: fileName);
    await prefs.setSignupData(data);
  }

  ///
  /// Whether or not there's failed upload
  ///
  Future<bool> pendingUpload() async {
    final complete = await isComplete();
    return isProcessing == false && complete == false;
  }

  ///
  /// Start upload, if there's anything to upload
  ///
  Future<void> start({int tries = 0}) async {
    final signupData = await prefs.getSignupData();
    if (signupData != null) {
      isProcessing = true;
      if (tries >= maxTries) {
        print('permanent failure uploading: $tries');
        isProcessing = false;
        return;
      }
      try {
        await _upload(signupData);
      } catch (error) {
        print('upload error - will try again $error');
      } finally {
        if (signupData.isComplete()) {
          await prefs.setSignupData(null);
          isProcessing = false;
        } else {
          print('not complete - try again in 20 seconds');
          await prefs.setSignupData(signupData);
          final int retries = tries + 1;
          Future.delayed(retryDelay, () => start(tries: retries));
        }
      }
    } else {
      print('error no signup data');
    }
  }

  bool trueResult(Result res) {
    return res.isValue && res.asValue!.value == true;
  }

  Future<bool> _upload(SignupData data) async {
    while (data.step < data.numSteps) {
      switch (data.step) {
        case 0:
          final signupResult = await _pPPSignUpUseCase.run(data.accountName);
          print('Signup success: ${signupResult.asValue?.value}');
          if (trueResult(signupResult)) {
            data.step++;
          } else {
            return false;
          }
          break;

        case 1:
          final loginResult = await _profileLoginUseCase.run(data.accountName);
          print('Login success: ${loginResult.asValue?.value}');
          if (trueResult(loginResult)) {
            data.step++;
          } else {
            return false;
          }
          break;

        case 2:
          final initResult = await _initializeProfileUseCase.run(accountName: data.accountName, name: data.userName);
          print('initResult: ${initResult.asValue?.value}');
          if (trueResult(initResult)) {
            data.step++;
          } else {
            return false;
          }
          break;

        case 3:
          if (data.fileName != null) {
            final setImageResult = await _setImageUseCase.runFileName(data.fileName!);
            print('setImageResult: ${setImageResult.asValue?.value}');
            if (trueResult(setImageResult)) {
              data.step++;
            } else {
              return false;
            }
          } else {
            data.step++;
          }
          break;

        default:
          break;
      }
    }
    return true;
  }

  ///
  /// returns true of the upload has completed successfully or has failed
  ///
  Future<bool> isComplete() async {
    final signupData = await prefs.getSignupData();
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
    return SignupData(
      accountName: accountName,
      userName: userName,
      fileName: fileName,
      step: step,
    );
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
