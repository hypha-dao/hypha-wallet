// ignore_for_file: prefer_single_quotes, unnecessary_brace_in_string_interps, unused_local_variable

import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_push_notifications_service.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/profile_upload_repository.dart';
import 'package:hypha_wallet/core/network/api/services/user_account_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AuthRepository {
  final HyphaSharedPrefs _appSharedPrefs;
  final SecureStorageService _secureStorageService;
  final UserAccountService _userService;
  final ProfileUploadRepository _uploadRepository;
  final AmplifyService _amplifyService;
  final FirebasePushNotificationsService _firebasePushNotificationsService;
  final FirebaseDatabaseService _firebaseDatabaseService;
  final StreamController<AuthenticationStatus> _controller = StreamController.broadcast();

  AuthenticationStatus currentAuthStatus = const Unknown();

  AuthRepository(
    this._appSharedPrefs,
    this._userService,
    this._secureStorageService,
    this._uploadRepository,
    this._amplifyService,
    this._firebasePushNotificationsService,
    this._firebaseDatabaseService,
  ) {
    status.listen((AuthenticationStatus event) {
      if (event is Authenticated) {
        currentAuthStatus = event;
      }
    });
  }

  Future<Result<UserProfileData, HyphaError>> createUserAccount({
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
        network: inviteLinkData.network.name,
        accountName: accountName,
        publicKey: userAuthData.publicKey.toString(),
      );

      final userData = UserProfileData(
        accountName: accountName,
        userName: userName,
        network: inviteLinkData.network,
      );

      _saveUserData(userData, userAuthData, false);

      print('create ppp account for $accountName with image ${image?.path}');
      await _uploadRepository.scheduleUpload(
        accountName: accountName,
        network: inviteLinkData.network,
        userName: userName,
        fileName: image?.path,
      );
      unawaited(_uploadRepository.start());

      return Result.value(userData);
    } catch (e, stack) {
      LogHelper.e('Error creating account $e');
      LogHelper.e(e.toString());
      unawaited(FirebaseCrashlytics.instance.recordError(e, stack));
      return Result.error(HyphaError.generic('Error creating account'));
    }
  }

  /// This stream will represent the source of truth for the user authentication.
  Stream<AuthenticationStatus> get status async* {
    yield* _controller.stream;
  }

  /// Use this method when we expect the auth data to be there. Anytime after auth. If the data isnt there. then crash
   Authenticated get authDataOrCrash {
    if (currentAuthStatus is Authenticated) {
      return currentAuthStatus as Authenticated;
    }

    throw Exception('Attempted to fetch Auth data but the user is not authenticated. ');
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

    /// Get firebase device token and save to firebase
    _firebasePushNotificationsService.getDeviceToken().then(
          (String? value) => value?.let(
            (it) => _firebaseDatabaseService.saveDeviceToken(
              deviceToken: it,
              accountName: userProfileData.accountName,
            ),
          ),
        );

    if (shouldLoginAfter) {
      loginUser(userProfileData, userAuthData);
    }
  }

  void loginUser(
    UserProfileData userProfileData,
    UserAuthData userAuthData,
  ) {
    return _controller.add(Authenticated(userAuthData, userProfileData));
  }

  Future<void> logOut(String? accountName) async {
    LogHelper.d('Clearing User Data');

    try {
      /// Clear Profile and Key
      await _appSharedPrefs.clear();
      await _secureStorageService.clearAllData();
      await _amplifyService.logout();
      _controller.add(const UnAuthenticated());

      /// Get firebase device token and remove to firebase
      await accountName?.let(
        (self) async => _firebasePushNotificationsService.getDeviceToken().then(
              (String? value) => value?.let((it) {
                _firebaseDatabaseService.removeDeviceToken(it, self);
              }),
            ),
      );
    } catch (error, stacktrace) {
      LogHelper.e('Error clearing user data', error: error, stacktrace: stacktrace);
    }

    _controller.add(const UnAuthenticated());
    LogHelper.d('User data cleared successfully');
  }

  void dispose() => _controller.close();
}

sealed class AuthenticationStatus {
  const AuthenticationStatus();
}

class Authenticated extends AuthenticationStatus {
  final UserAuthData userAuthData;
  final UserProfileData userProfileData;

  const Authenticated(this.userAuthData, this.userProfileData);
}

class UnAuthenticated extends AuthenticationStatus {
  const UnAuthenticated();
}

class Unknown extends AuthenticationStatus {
  const Unknown();
}
