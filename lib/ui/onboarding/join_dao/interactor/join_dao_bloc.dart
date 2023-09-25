import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/network/api/services/invite_service.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'join_dao_bloc.freezed.dart';

part 'join_dao_event.dart';

part 'join_dao_state.dart';

class JoinDaoBloc extends Bloc<JoinDaoEvent, JoinDaoState> {
  final AuthRepository _authRepository;
  final InviteService _inviteService;
  final ErrorHandlerManager _errorHandlerManager;
  final String secret;

  JoinDaoBloc(
    this._authRepository,
    this._inviteService,
    this._errorHandlerManager,
    this.secret,
  ) : super(const JoinDaoState()) {
    on<_Initial>(_initial);
    on<_OnYesTapped>(_onYesTapped);
  }

  Future<void> _initial(_Initial event, Emitter<JoinDaoState> emit) async {
    emit(state.copyWith(pageState: PageState.success));
  }

  FutureOr<void> _onYesTapped(_OnYesTapped event, Emitter<JoinDaoState> emit) async {
    emit(state.copyWith(isButtonLoading: true));
    final result = await _inviteService.redeemInvite(
      user: _authRepository.authDataOrCrash.userProfileData,
      secret: secret,
    );

    if(result.isValue) {
      emit(state.copyWith(isButtonLoading: false));
      Get.back();
    } else {
      emit(state.copyWith(isButtonLoading: false));
      unawaited(_errorHandlerManager.handlerError(result.asError!.error));
    }
  }
}
