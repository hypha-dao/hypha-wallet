// ignore_for_file: prefer_single_quotes, unnecessary_brace_in_string_interps

import 'dart:async';

import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/user_account_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:image_picker/image_picker.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthRepository {
  final HyphaSharedPrefs _appSharedPrefs;
  final SecureStorageService _secureStorageService;
  final UserAccountService _userService;
  final _controller = StreamController<AuthenticationStatus>();

  AuthRepository(this._appSharedPrefs, this._userService, this._secureStorageService);

  Future<bool> createUserAccount({
    required String accountName,
    required UserAuthData userAuthData,
    required InviteLinkData inviteLinkData,
    required String userName,
    XFile? image,
  }) async {
    try {
      /// 1 - Create blockchain account
      print(
          'creating account with \nPrivate Key: ${userAuthData.eOSPrivateKey} \nPublic Key${userAuthData.publicKey.toString()}');
      print("secret: ${inviteLinkData.code}");
      print("network: ${inviteLinkData.chain}");
      print("accountname: ${accountName}");

      // ignore: unused_local_variable
      final response = await _userService.createUserAccount(
        code: inviteLinkData.code,
        network: inviteLinkData.chain,
        accountName: accountName,
        publicKey: userAuthData.publicKey.toString(),
      );

      /// 2 - log into ppp service, upload name and image
      /// [TBD]

      // TODO(gguij): Check if success, grab the user image from the service response
      _saveUserData(UserProfileData(accountName: accountName, userName: userName), userAuthData, false);
      return true;
    } catch (e) {
      print('DioError creating account $e');
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
