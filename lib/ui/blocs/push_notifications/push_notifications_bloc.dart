import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/firebase/firebase_push_notifications.dart';

part 'page_command.dart';
part 'push_notifications_bloc.freezed.dart';
part 'push_notifications_event.dart';
part 'push_notifications_state.dart';

class PushNotificationsBloc extends Bloc<PushNotificationsEvent, PushNotificationsState> {
  final FirebasePushNotifications firebasePushNotifications;

  PushNotificationsBloc(this.firebasePushNotifications) : super(const PushNotificationsState()) {
    initPushNotifications();

    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> initPushNotifications() async {
    firebasePushNotifications.registerToOnMessage((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });

    // final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();
    //
    // if (initialLink != null) {
    //   LogHelper.d('initial link: ${initialLink.link}');
    //   add(DeeplinkEvent.incomingFirebaseDeepLink(initialLink.link));
    // }
    //
    // FirebaseDynamicLinks.instance.onLink.listen((PendingDynamicLinkData dynamicLinkData) {
    //   LogHelper.d('received link: ${dynamicLinkData.link}');
    //   add(DeeplinkEvent.incomingFirebaseDeepLink(dynamicLinkData.link));
    // }).onError((error) {
    //   LogHelper.e('Deep link error: $error');
    // });
  }
}
