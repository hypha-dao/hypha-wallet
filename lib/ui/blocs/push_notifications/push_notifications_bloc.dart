import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/firebase/firebase_push_notifications.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/home_page/usecases/parse_qr_code_use_case.dart';

part 'page_command.dart';
part 'push_notifications_bloc.freezed.dart';
part 'push_notifications_event.dart';
part 'push_notifications_state.dart';

class PushNotificationsBloc extends Bloc<PushNotificationsEvent, PushNotificationsState> {
  final FirebasePushNotifications firebasePushNotifications;
  final ParseQRCodeUseCase parseQRCodeUseCase;

  PushNotificationsBloc(this.firebasePushNotifications, this.parseQRCodeUseCase)
      : super(const PushNotificationsState()) {
    initPushNotifications();

    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_OnMessageReceived>(_onMessageReceived);
  }

  Future<void> initPushNotifications() async {
    firebasePushNotifications.registerToOnMessage((RemoteMessage message) async {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');
      add(PushNotificationsEvent.onMessageReceived(message));
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

  FutureOr<void> _onMessageReceived(_OnMessageReceived event, Emitter<PushNotificationsState> emit) async {
    final message = event.message;
    if (message.data.containsKey('incoming_transaction')) {
      final String? incomingTransaction = message.notification?.body;
      final result = await incomingTransaction
          ?.let((it) async => parseQRCodeUseCase.run(ParseQrCodeInput(scanResult: incomingTransaction)));

      if (result?.isValue == true) {
        final ScanQrCodeResultData value = result!.asValue!.value;

        emit(state.copyWith(command: PageCommand.navigateToSignTransaction(value)));
      } else {
        LogHelper.d('_onQRCodeScanned Error ${result!.asError!.error}');
        // emit(state.copyWith(isLoading: false));
        // ignore: unawaited_futures
        // _errorHandlerManager.handlerError(HyphaError(message: 'Error reading QR Code', type: HyphaErrorType.generic));
      }
    }

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  }
}
