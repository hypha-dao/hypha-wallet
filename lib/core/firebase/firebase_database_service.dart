import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

class FirebaseDatabaseService {
  const FirebaseDatabaseService._();

  factory FirebaseDatabaseService.init() {
    return const FirebaseDatabaseService._();
  }

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
}
