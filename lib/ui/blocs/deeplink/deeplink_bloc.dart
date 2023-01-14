import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

part 'deeplink_bloc.freezed.dart';
part 'deeplink_event.dart';
part 'deeplink_state.dart';
part 'page_command.dart';

class DeeplinkBloc extends Bloc<DeeplinkEvent, DeeplinkState> {
  StreamSubscription? _linkStreamSubscription;

  DeeplinkBloc() : super(const DeeplinkState()) {
    initDynamicLinks();

    on<_IncomingFirebaseDeepLink>(_incomingFirebaseDeepLink);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  @override
  Future<void> close() {
    _linkStreamSubscription?.cancel();
    return super.close();
  }

  Future<void> initDynamicLinks() async {
    final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();

    if (initialLink != null) {
      LogHelper.d('initial link: ${initialLink.link}');
      add(DeeplinkEvent.incomingFirebaseDeepLink(initialLink.link));
    }

    FirebaseDynamicLinks.instance.onLink.listen((PendingDynamicLinkData dynamicLinkData) {
      LogHelper.d('received link: ${dynamicLinkData.link}');
      add(DeeplinkEvent.incomingFirebaseDeepLink(dynamicLinkData.link));
    }).onError((error) {
      LogHelper.e('Deep link error: $error');
    });
  }

  Future<void> _incomingFirebaseDeepLink(_IncomingFirebaseDeepLink event, Emitter<DeeplinkState> emit) async {
    /// fetch data from link.
    // final DeepLinkData result = await GetInitialDeepLinkUseCase().run(event.newLink);

    /// Emit new state with data from link
    emit(state.copyWith(command: const PageCommand.navigateToCreateAccount()));
  }
}
