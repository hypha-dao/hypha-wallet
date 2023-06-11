import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/firebase/firebase_analytics_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_push_notifications_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/home_page/usecases/parse_qr_code_use_case.dart';

part 'page_command.dart';
part 'push_notifications_bloc.freezed.dart';
part 'push_notifications_event.dart';
part 'push_notifications_state.dart';

class PushNotificationsBloc extends Bloc<PushNotificationsEvent, PushNotificationsState> {
  final FirebasePushNotificationsService firebasePushNotifications;
  final FirebaseAnalyticsService firebaseAnalyticsService;
  final ParseQRCodeUseCase parseQRCodeUseCase;

  PushNotificationsBloc(this.firebasePushNotifications, this.parseQRCodeUseCase, this.firebaseAnalyticsService)
      : super(const PushNotificationsState()) {
    initPushNotifications();

    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_OnMessageReceived>(_onMessageReceived);
  }

  Future<void> initPushNotifications() async {
    firebasePushNotifications.registerToOnMessage((RemoteMessage message) async {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');
      add(PushNotificationsEvent.onMessageReceived(message, false));
    });

    await setupInteractedMessage();
  }

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from a terminated state.
    final RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    print('Got a message whilst in the onMessageOpenedApp or opened from terminated!');
    print('Message data: ${message.data}');
    add(PushNotificationsEvent.onMessageReceived(message, false));
  }

  FutureOr<void> _onMessageReceived(_OnMessageReceived event, Emitter<PushNotificationsState> emit) async {
    /// Log to firebase
    unawaited(firebaseAnalyticsService.logPushNotificationReceivedEvent(event.message, event.isBackground));
    final message = event.message;
    String? notificationTypeId;
    if (message.data.containsKey('notification_type_id')) {
      notificationTypeId = message.data['notification_type_id'];
    }

    if (notificationTypeId == 'incoming_transaction') {
      final String? incomingTransaction = message.notification?.body;
      final result = await incomingTransaction?.let(
        (it) async => parseQRCodeUseCase.run(ParseESRLinkInput(esrLink: it)),
      );

      if (result?.isValue == true) {
        final ScanQrCodeResultData value = result!.asValue!.value;

        emit(state.copyWith(command: PageCommand.navigateToSignTransaction(value)));
      } else {
        LogHelper.d('_onQRCodeScanned Error ${result!.asError!.error}');
      }
    }

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  }
}
