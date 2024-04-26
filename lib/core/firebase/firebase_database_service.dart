import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/models/network.dart';

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
  Future<List<FirebaseTokenData>> getAllTokens(Network network) async {
    print("getting tokens 'tokens/$network'");
    // Access the collection
    final CollectionReference tokens = FirebaseFirestore.instance.collection('tokens');

    // Query the subcollection for the specified network
    final QuerySnapshot querySnapshot = await tokens.doc(network.name).collection('tokens').get();

    //final tokens = await db.collection('tokens/${network.name}').get();
    final mappedTokens = querySnapshot.docs
        .map(
          (QueryDocumentSnapshot<Object?> token) => FirebaseTokenData(
            network: network.name,
            image: (token.data() as Map<String, dynamic>)['image'],
            name: (token.data() as Map<String, dynamic>)['name'],
            contract: (token.data() as Map<String, dynamic>)['contract'],
            symbol: (token.data() as Map<String, dynamic>)['symbol'],
            precision: (token.data() as Map<String, dynamic>)['precision'],
          ),
        )
        .toList();

    return mappedTokens;
  }
}
