// ignore_for_file: prefer_single_quotes, unnecessary_brace_in_string_interps

import 'dart:math';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) =>
    String.fromCharCodes(Iterable.generate(length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

class AuthApi {
  final String activeUser;
  final String loginContract;
  final eosService = GetIt.I.get<EOSService>();

  AuthApi({required this.activeUser, required this.loginContract});

  // TODO(n13): Handle active user changed event
  // init() {
  //     PPP.events.on('activeUserChanged', (activeUser) => this.setActiveUser(activeUser));
  // }

  Future<SignUpResult> _signUp(accountName) async {
    return Amplify.Auth.signUp(
      username: accountName,
      password: getRandomString(30),
    );
  }

  Future<bool> signIn() async {
    final accountName = activeUser; // await this.getAccountName();
    try {
      await _signUp(accountName);
    } catch (error) {
      if (!error.toString().contains('UsernameExistsException')) {
        rethrow;
      }
    }
    final SignInResult signInResult1 = await Amplify.Auth.signIn(username: accountName);

    // original code - doesn't work like this in flutter...
    // const { challengeParam: { loginCode } } = cognitoUser;
    // TODO(n13): See if this works...
    print("sign in result: $signInResult1");
    print("sign in result nextStep: ${signInResult1.nextStep}");
    print("sign in result additionalInfo: ${signInResult1.nextStep?.additionalInfo}");

    //final challengeParam = cognitoUser.nextStep?.additionalInfo?['challengeParameters'];
    final loginCode = signInResult1.nextStep?.additionalInfo?['loginCode'];

    // https://docs.amplify.aws/lib/auth/signin_with_custom_flow/q/platform/flutter/

    final SignInResult signInResult2 = await Amplify.Auth.confirmSignIn(confirmationValue: loginCode!);

    print("sign in result: ${signInResult2}");

    return signInResult2.isSignedIn;
  }

  Future<dynamic> _authenticate(code) async {
    try {
      final auth = Authorization()
        ..actor = activeUser
        ..permission = 'active';

      final action = EOSAction()
        ..account = loginContract
        ..authorization = [auth]
        ..data = {
          'account_name': activeUser,
          'login_code': code,
        };

      final transaction = EOSTransaction([action]);

      return eosService.sendTransaction(eosTransaction: transaction, accountName: activeUser);
    } catch (error) {
      print("error on sign in transaction: $error");
      rethrow;
    }
  }

  Future<AuthSession> currentSession() async {
    return Amplify.Auth.fetchAuthSession();
  }

  Future<AuthUser> getCurrentUser() async {
    final user = await Amplify.Auth.getCurrentUser();
    return user;
  }

  Future<bool> isUserSignedIn() async {
    final result = await Amplify.Auth.fetchAuthSession();
    return result.isSignedIn;
  }

  Future<bool> hasValidSession() async {
    return isUserSignedIn();
  }

  Future<void> signOutCurrentUser() async {
    try {
      await Amplify.Auth.signOut();
    } on AuthException catch (e) {
      print(e.message);
    }
    // TODO(NIK): messages
    // this.emit('signOut');
  }
}
