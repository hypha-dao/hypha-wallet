import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/bottom_navigation/components/bottom_navigation_view.dart';

part 'bottom_navigation_bloc.freezed.dart';

part 'bottom_navigation_event.dart';

part 'bottom_navigation_state.dart';

part 'page_command.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc(RemoteConfigService _remoteConfigService)
      : super(
          BottomNavigationState(
            allPages: [
              BottomNavigationPage.home,
              if (true) BottomNavigationPage.wallet,
              BottomNavigationPage.transactions,
              BottomNavigationPage.profile,
              BottomNavigationPage.settings,
            ],
          ),
        ) {
    on<_Initial>(_initial);
    on<_OnPageSelected>(_onPageSelected);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<BottomNavigationState> emit) async {
    event.initialPage?.let((self) => emit(state.copyWith(selectedPage: self)));
  }

  FutureOr<void> _onPageSelected(_OnPageSelected event, Emitter<BottomNavigationState> emit) {
    emit(state.copyWith(selectedPage: event.page));
  }
}
