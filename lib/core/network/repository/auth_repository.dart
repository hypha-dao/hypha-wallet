import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/models/authenticated_data.dart';
import 'package:hypha_wallet/core/network/api/user_account_service.dart';
import 'package:hypha_wallet/core/network/dio_exception.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthRepository {
  final HyphaSharedPrefs _appSharedPrefs;
  final UserAccountService _userService;
  final _controller = StreamController<AuthenticationStatus>();

  AuthRepository(this._appSharedPrefs, this._userService);

  /// This stream will represent the source of truth for the user authentication.
  Stream<AuthenticationStatus> get status async* {
    yield* _controller.stream;
  }

  Future<bool> createUserAccount({required String userAccount, required String token}) async {
    try {
      final Response response = await _userService.createUserAccount(userAccount);

      // TODO(gguij): Check if success
      var ad = AuthenticatedData(account: userAccount, token: token);
      _appSharedPrefs.setAuthenticatedData(ad);
      _controller.add(AuthenticationStatus.authenticated);
      return response.data as bool;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<AuthenticatedData> login(String account, String token) async {
    var ad = AuthenticatedData(account: account, token: token);
    _appSharedPrefs.setAuthenticatedData(ad);
    _controller.add(AuthenticationStatus.authenticated);
    return ad;
  }

  Future<void> signOut() async {
    LogHelper.d('Clearing User Data');

    try {
      /// Clear Profile and Key
      // await _appSharedPrefs.clear();
    } catch (error, stacktrace) {
      LogHelper.e('Error clearing user data', error: error, stacktrace: stacktrace);
    }

    _controller.add(AuthenticationStatus.unauthenticated);
    LogHelper.d('User data cleared successfully');
  }

  void dispose() => _controller.close();
}
