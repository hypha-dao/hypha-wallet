import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

class FirebasePushNotifications {
  const FirebasePushNotifications._();

  factory FirebasePushNotifications.init() {
    FirebaseMessaging.instance.getToken().then((value) {
      // TODO(gguij): Send token to server
      LogHelper.d('Firebase Device Token: $value');
    });

    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
      // TODO(Gguij): If necessary send token to application server.

      // Note: This callback is fired at each app startup and whenever a new
      // token is generated.
    }).onError((err) {
      LogHelper.d('Error getting firebase device token');
      LogHelper.e(err.toString());
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    return const FirebasePushNotifications._();
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
