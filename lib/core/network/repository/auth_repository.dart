// ignore_for_file: prefer_single_quotes, unnecessary_brace_in_string_interps, unused_local_variable

import 'dart:async';

import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/user_account_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/profile/usecases/initialize_profile_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/ppp_sign_up_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_image_use_case.dart';
import 'package:image_picker/image_picker.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthRepository {
  final HyphaSharedPrefs _appSharedPrefs;
  final SecureStorageService _secureStorageService;
  final UserAccountService _userService;
  final PPPSignUpUseCase _pPPSignUpUseCase;
  final ProfileLoginUseCase _profileLoginUseCase;
  final InitializeProfileUseCase _initializeProfileUseCase;
  final SetImageUseCase _setImageUseCase;
  final _controller = StreamController<AuthenticationStatus>();

  AuthRepository(
    this._appSharedPrefs,
    this._userService,
    this._secureStorageService,
    this._pPPSignUpUseCase,
    this._profileLoginUseCase,
    this._initializeProfileUseCase,
    this._setImageUseCase,
  );

  Future<bool> createUserAccount({
    required String accountName,
    required UserAuthData userAuthData,
    required InviteLinkData inviteLinkData,
    required String userName,
    XFile? image,
  }) async {
    try {
      /// 1 - Create blockchain account
      // print(
      //     'createUserAccount with \nPrivate Key: ${userAuthData.eOSPrivateKey} \nPublic Key${userAuthData.publicKey.toString()}');
      // print("secret: ${inviteLinkData.code}");
      // print("network: ${inviteLinkData.chain}");
      // print("accountname: ${accountName}");

      final response = await _userService.createUserAccount(
        code: inviteLinkData.code,
        network: inviteLinkData.chain,
        accountName: accountName,
        publicKey: userAuthData.publicKey.toString(),
      );

      _saveUserData(UserProfileData(accountName: accountName, userName: userName), userAuthData, false);

      // TODO(gguij): Improve this UX process.
      ///
      /// The steps 2 - 5 below take a very long time, but could all be done in the background
      /// I am also concerned that if one of these calls fail, we end up in a bad state.
      ///
      /// As long as we successfully create an account, we are actually good to go
      ///
      /// To mitigate that, I would suggest we cache all this data, and have a retry mechanism that does it
      /// all in the background. And tries again if it fails.

      print('create ppp account for $accountName');

      /// 2 - sign up to ppp service
      final signupResult = await _pPPSignUpUseCase.run(accountName);
      print("Signup success: ${signupResult.asValue?.value}");

      /// 3 - log into ppp service - makes a blockchain transaction so this is really slow
      final loginResult = await _profileLoginUseCase.run(accountName);
      print("Login success: ${loginResult.asValue?.value}");

      /// 4 - initialize the profile with initial data - this can only be done when logged in.
      final initializeProfileResult = await _initializeProfileUseCase.run(accountName: accountName, name: userName);

      /// 5 - Upload user image.
      if (image != null) {
        print('uploading image...');
        final setImageResult = await _setImageUseCase.run(image, accountName);
      }

      return true;
    } catch (e) {
      print('Error creating account $e');
      print(e);
      rethrow;
    }
  }

  /// This stream will represent the source of truth for the user authentication.
  Stream<AuthenticationStatus> get status async* {
    yield* _controller.stream;
  }

  Future<UserProfileData> login(
    UserProfileData userProfileData,
    UserAuthData userAuthData,
    bool shouldLoginAfter,
  ) async {
    _saveUserData(userProfileData, userAuthData, shouldLoginAfter);
    return userProfileData;
  }

  void _saveUserData(UserProfileData userProfileData, UserAuthData userAuthData, bool shouldLoginAfter) {
    _appSharedPrefs.setUserProfileData(userProfileData);
    _secureStorageService.setUserAuthData(userAuthData);

    if (shouldLoginAfter) {
      loginUser();
    }
  }

  void loginUser() {
    return _controller.add(AuthenticationStatus.authenticated);
  }

  Future<void> signOut() async {
    LogHelper.d('Clearing User Data');

    try {
      /// Clear Profile and Key
      await _appSharedPrefs.clear();
      await _secureStorageService.clearAllData();
    } catch (error, stacktrace) {
      LogHelper.e('Error clearing user data', error: error, stacktrace: stacktrace);
    }

    _controller.add(AuthenticationStatus.unauthenticated);
    LogHelper.d('User data cleared successfully');
  }

  void dispose() => _controller.close();
}
