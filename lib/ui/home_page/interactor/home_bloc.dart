import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'page_command.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<_Initial>(_initial);
    on<_OnQRCodeScanned>(_onQRCodeScanned);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<HomeState> emit) async {}

  FutureOr<void> _onQRCodeScanned(_OnQRCodeScanned event, Emitter<HomeState> emit) {
    /// Handle QR code scan
  }
}
