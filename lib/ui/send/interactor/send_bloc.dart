import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'page_command.dart';

part 'send_bloc.freezed.dart';

part 'send_event.dart';

part 'send_state.dart';

class SendBloc extends Bloc<SendEvent, SendState> {
  SendBloc(
    UserProfileData receiverUser,
  ) : super(SendState(receiverUser: receiverUser)) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<SendState> emit) async {}
}
