import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseAnalyticsService {
  FirebaseAnalyticsService._();

  factory FirebaseAnalyticsService.init() {
    return FirebaseAnalyticsService._();
  }

  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver get firebaseObserver => FirebaseAnalyticsObserver(analytics: analytics);

  Future<void> logPushNotificationReceivedEvent(RemoteMessage message, bool isBackground) async {
    final time = DateTime.now();

    final Map<String, dynamic> data = {
      'received_time': time.toUtc().toString(),
      'is_background': isBackground.toString(),
      'title': message.notification?.title,
      'body': message.notification?.body,
    };

    final Map<String, Object> params = {
      ...data,
      ...message.data,
    };
    return analytics.logEvent(name: 'push_notification_received', parameters: params);
  }

  Future<void> logLoginEvent(String loginMethod) async {
    return analytics.logLogin(loginMethod: 'login');
  }
}
