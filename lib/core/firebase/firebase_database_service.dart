import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
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
      'deviceTokens': FieldValue.arrayUnion([deviceToken]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .update(user)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Used to firebase push notifications
  Future<void> removeDeviceToken(String deviceToken, String accountName) {
    final db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      'deviceTokens': FieldValue.arrayRemove([deviceToken]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .update(user)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Crypto token selected by the user
  Future<void> saveTokenToUser({required String tokenId, required String accountName}) {
    final db = FirebaseFirestore.instance;

    final token = <String, dynamic>{
      'userTokens': FieldValue.arrayUnion([tokenId]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .update(token)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Crypto token selected by the user
  Future<void> removeTokenFromUser({required String tokenId, required String accountName}) {
    final db = FirebaseFirestore.instance;

    final token = <String, dynamic>{
      'userTokens': FieldValue.arrayRemove([tokenId]),
      'lastEdit': Timestamp.now(),
    };

    return db
        .collection('users')
        .doc(accountName)
        .update(token)
        .onError((e, _) => LogHelper.d('Error writing document: $e'));
  }

  /// Crypto token selected by the user
  Future<List<String>> getUserTokens({required String accountName}) async {
    final db = FirebaseFirestore.instance;

    final DocumentSnapshot<Map<String, dynamic>> user = await db.collection('users').doc(accountName).get();

    final List<String> tokens = List<String>.from(user.data()?['userTokens'] ?? []);

    return tokens;
  }

  /// Crypto token selected by the user listen
  Stream<List<String>> getUserTokensLive({required String accountName}) {
    final db = FirebaseFirestore.instance;

    return db
        .collection('users')
        .doc(accountName)
        .snapshots()
        .map((DocumentSnapshot<Map<String, dynamic>> event) => List<String>.from(event.data()?['userTokens'] ?? []));
  }

  /// Get all tokens
  Future<List<FirebaseTokenData>> getAllTokens() async {
    final db = FirebaseFirestore.instance;

    final tokens = await db.collection('tokens').get();
    final mappedTokens = tokens.docs
        .map(
          (QueryDocumentSnapshot<Map<String, dynamic>> token) => FirebaseTokenData(
            image: token.data()['image'],
            name: token.data()['name'],
            contract: token.data()['contract'],
            symbol: token.data()['symbol'],
            id: token.data()['id'],
          ),
        )
        .toList();

    return mappedTokens;
  }
}
