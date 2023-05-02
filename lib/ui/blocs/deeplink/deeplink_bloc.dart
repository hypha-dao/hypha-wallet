import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/home_page/usecases/parse_qr_code_use_case.dart';

part 'deeplink_bloc.freezed.dart';
part 'deeplink_event.dart';
part 'deeplink_state.dart';
part 'page_command.dart';

class DeeplinkBloc extends Bloc<DeeplinkEvent, DeeplinkState> {
  final ParseQRCodeUseCase _parseQRCodeUseCase;
  final _appLinks = AppLinks();

  StreamSubscription<String>? _linkSubscription;

  DeeplinkBloc(this._parseQRCodeUseCase) : super(const DeeplinkState()) {
    initDynamicLinks();

    on<_IncomingFirebaseDeepLink>(_incomingFirebaseDeepLink);
    on<_IncomingESRLink>(_incomingESRLink);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  void _debugShowMessage(String message) {
    Get.showSnackbar(GetSnackBar(message: message, duration: const Duration(seconds: 5)));
  }

  Future<void> initDynamicLinks() async {
    /// Handle Firebase links - these don't react to ESR links but we check just in case
    // final PendingDynamicLinkData? initialDeepLink = await FirebaseDynamicLinks.instance.getInitialLink();

    // if (initialDeepLink != null) {
    //   LogHelper.d('initial link: ${initialDeepLink.link}');
    //   if (!initialDeepLink.link.isEsr()) {
    //     _debugShowMessage('initial firebase link: ${initialDeepLink.link}');
    //     add(DeeplinkEvent.incomingFirebaseDeepLink(initialDeepLink.link));
    //   } else {
    //     _debugShowMessage('initial esr link: ${initialDeepLink.link}');
    //   }
    // }

    final initialUriString = await _appLinks.getInitialAppLinkString();
    if (initialUriString != null) {
      if (SigningRequestManager.isValidESRScheme(initialUriString)) {
        add(DeeplinkEvent.incomingESRLink(initialUriString));
      } else {
        final uri = Uri.parse(initialUriString);
        add(DeeplinkEvent.incomingFirebaseDeepLink(uri));
      }
    }

    _linkSubscription = _appLinks.stringLinkStream.listen((uriString) {
      // Note: We must listen to strings, not Uris; Uri parsing loses case
      // and ESR signing requests are case sensitive.
      if (SigningRequestManager.isValidESRScheme(uriString)) {
        print('>>> esr link detected: $uriString');
        _debugShowMessage('esr link detected: $uriString');
        add(DeeplinkEvent.incomingESRLink(uriString));
      } else {
        //_debugShowMessage('Not ESR: $uriString');
        print('non esr link: $uriString');
      }
    }, onError: (error) {
      print('link subscription error $error');
    });

    FirebaseDynamicLinks.instance.onLink.listen((PendingDynamicLinkData dynamicLinkData) {
      LogHelper.d('received link: ${dynamicLinkData.link}');

      if (!dynamicLinkData.link.isEsr()) {
        _debugShowMessage('deep link: ${dynamicLinkData.link}');
        add(DeeplinkEvent.incomingFirebaseDeepLink(dynamicLinkData.link));
      } else {
        _debugShowMessage('ESR link: ${dynamicLinkData.link}');
      }
    }).onError((error) {
      LogHelper.e('Deep link error: $error');
    });
  }

  Future<void> _incomingFirebaseDeepLink(_IncomingFirebaseDeepLink event, Emitter<DeeplinkState> emit) async {
    /// fetch data from link.
    final queryParams = event.link.queryParameters;
    if (queryParams.isNotEmpty && queryParams.containsKey('code') && queryParams.containsKey('chain')) {
      final code = queryParams['code']!;
      final chain = queryParams['chain']!;
      final dao = queryParams['dao']!;

      /// Emit new state with data from link
      emit(
        state.copyWith(
          inviteLinkData: InviteLinkData(code: code, chain: chain, dao: dao),
          command: const PageCommand.navigateToCreateAccount(),
        ),
      );
    }
  }

  Future<void> _incomingESRLink(_IncomingESRLink event, Emitter<DeeplinkState> emit) async {
    // final useCase = GetIt.I.get<ParseQRCodeUseCase>();
    final result = await _parseQRCodeUseCase.run(ParseESRLinkInput(esrLink: event.link));
    if (result.isValue) {
      emit(
        state.copyWith(
          command: PageCommand.navigateToSignTransaction(result.asValue!.value),
        ),
      );
    } else {
      print('error: ${result.asError!.error}');
      print(result.asError!.error);
    }
  }
}

extension UriESR on Uri {
  bool isEsr() {
    return SigningRequestManager.isValidESRScheme(toString());
  }
}
