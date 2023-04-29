import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

class FirebasePushNotificationsService {
  final _onTokenRefreshStream = StreamController<String>();

  FirebasePushNotificationsService._();

  FirebasePushNotificationsService.init() {
    FirebaseMessaging.instance.onTokenRefresh.listen((String fcmToken) {
      _onTokenRefreshStream.add(fcmToken);
    }).onError((err) {
      LogHelper.d('Error getting firebase device token');
      LogHelper.e(err.toString());
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  /// This stream will fire when the firebase token changes.
  Stream<String> get onFCMTokenRefresh async* {
    yield* _onTokenRefreshStream.stream;
  }

  void dispose() => _onTokenRefreshStream.close();

  Future<String?> getDeviceToken() {
    return FirebaseMessaging.instance.getToken();
  }

  void registerToOnMessage(listener) {
    FirebaseMessaging.onMessage.listen(listener);
  }

  /// Call this method to ask the user for permission to receive push notifications.
  Future<NotificationSettings> requestPushNotificationPermission() async {
    return FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}
