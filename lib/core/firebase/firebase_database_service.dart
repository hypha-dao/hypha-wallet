import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

class FirebaseDatabaseService {
  const FirebaseDatabaseService._();

  factory FirebaseDatabaseService.init() {
    return const FirebaseDatabaseService._();
  }

  /// Used to firebase push notifications
  Future<void> saveDeviceToken({required String deviceToken, required String accountName}) {
    final db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      'accountName': accountName,
      'deviceToken': FieldValue.arrayUnion([deviceToken]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .set(user)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Used to firebase push notifications
  Future<void> removeDeviceToken(String deviceToken, String accountName) {
    final db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      'deviceToken': FieldValue.arrayRemove([deviceToken]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .set(user)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Crypto token selected by the user
  Future<void> saveToken({required String tokenSymbol, required String accountName}) {
    final db = FirebaseFirestore.instance;

    final token = <String, dynamic>{
      'userTokens': FieldValue.arrayUnion([tokenSymbol]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .set(token)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Crypto token selected by the user
  Future<void> removeToken({required String tokenSymbol, required String accountName}) {
    final db = FirebaseFirestore.instance;

    final token = <String, dynamic>{
      'userTokens': FieldValue.arrayRemove([tokenSymbol]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .set(token)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Crypto token selected by the user
  Future<List<String>> getTokens({required String accountName}) async {
    final db = FirebaseFirestore.instance;

    final DocumentSnapshot<Map<String, dynamic>> user = await db.collection('users').doc(accountName).get();
    
    final List<String> tokens = List<String>.from(user.data()?['userTokens'] ?? []);

    return tokens;
  }
}
