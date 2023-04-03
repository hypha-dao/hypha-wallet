import 'dart:convert';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupStateMachine {
  final String accountName;
  final String userName;
  final String fileName;
  int step = 0;
  final HyphaSharedPrefs prefs;

  SignupStateMachine({
    required this.accountName,
    required this.userName,
    required this.fileName,
    required this.prefs,
  });

  static SignupStateMachine? loadFromPreferences(HyphaSharedPrefs prefs) {
    final jsonString = prefs.getString('signup_state_machine');
    if (jsonString != null) {
      return SignupStateMachine.fromJson(jsonString, prefs);
    }
  }

  void signup() {
    // Code to sign up
  }

  void moveToNextStep() {
    step++;
    _saveToPrefs();
  }

  Future<void> _saveToPrefs() async {
    final jsonString = toJson();
    await prefs.setString('signup_state_machine', jsonString);
  }

  factory SignupStateMachine.fromJson(String jsonString, HyphaSharedPrefs prefs) {
    final jsonMap = jsonDecode(jsonString);
    final accountName = jsonMap['accountName'];
    final userName = jsonMap['userName'];
    final fileName = jsonMap['fileName'];
    final step = jsonMap['step'];
    final prefs = null; // We don't need prefs when constructing from JSON
    final stateMachine = SignupStateMachine(
      accountName: accountName,
      userName: userName,
      fileName: fileName,
      prefs: prefs,
    );
    stateMachine.step = step;
    return stateMachine;
  }

  String toJson() {
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
    return 'Account Name: $accountName, User Name: $userName, File Name: $fileName';
  }
}
