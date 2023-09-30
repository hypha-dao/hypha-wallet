import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/network/api/services/invite_service.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/home_page/usecases/get_dao_name_use_case.dart';

part 'join_dao_bloc.freezed.dart';

part 'join_dao_event.dart';

part 'join_dao_state.dart';

class JoinDaoBloc extends Bloc<JoinDaoEvent, JoinDaoState> {
  final AuthRepository _authRepository;
  final InviteService _inviteService;
  final ErrorHandlerManager _errorHandlerManager;
  final GetDaoNameUseCase _getDaoNameUseCase;
  final InviteLinkData _inviteLinkData;

  JoinDaoBloc(
    this._authRepository,
    this._inviteService,
    this._errorHandlerManager,
    this._getDaoNameUseCase,
    this._inviteLinkData,
  ) : super(const JoinDaoState()) {
    on<_Initial>(_initial);
    on<_OnYesTapped>(_onYesTapped);
  }

  Future<void> _initial(_Initial event, Emitter<JoinDaoState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final result = await _getDaoNameUseCase.run(_inviteLinkData.dao!, _inviteLinkData.network);
    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, daoName: result.asValue!.value));
    } else {
      emit(state.copyWith(pageState: PageState.failure));
    }
  }

  FutureOr<void> _onYesTapped(_OnYesTapped event, Emitter<JoinDaoState> emit) async {
    emit(state.copyWith(isButtonLoading: true));
    final result = await _inviteService.redeemInvite(
      user: _authRepository.authDataOrCrash.userProfileData,
      secret: _inviteLinkData.enrollSecret!,
    );

    if (result.isValue) {
      emit(state.copyWith(isButtonLoading: false));
      Get.back();
    } else {
      emit(state.copyWith(isButtonLoading: false));
      unawaited(_errorHandlerManager.handlerError(result.asError!.error));
    }
  }
}
