import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/firebase/firebase_push_notifications_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/home_page/usecases/parse_qr_code_use_case.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'page_command.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ParseQRCodeUseCase _parseQRCodeUseCase;
  final ErrorHandlerManager _errorHandlerManager;
  final FirebasePushNotificationsService _firebasePushNotificationsService;

  HomeBloc(
    this._parseQRCodeUseCase,
    this._errorHandlerManager,
    this._firebasePushNotificationsService,
  ) : super(const HomeState()) {
    on<_Initial>(_initial);
    on<_OnQRCodeScanned>(_onQRCodeScanned);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<HomeState> emit) async {
    /// This will only fire if notifications are not granted already.
    unawaited(_firebasePushNotificationsService.requestPushNotificationPermission());
  }

  FutureOr<void> _onQRCodeScanned(_OnQRCodeScanned event, Emitter<HomeState> emit) async {
    if (event.value.isEmpty) {
      return;
    }

    emit(state.copyWith(isLoading: true));
    try {
      final result = await _parseQRCodeUseCase.run(ParseESRLinkInput(esrLink: event.value));
      if (result.isValue) {
        final ScanQrCodeResultData value = result.asValue!.value;

        emit(state.copyWith(command: PageCommand.navigateToTransactionDetails(value), isLoading: false));
      } else {
        LogHelper.d('_onQRCodeScanned Error ${result.asError!.error}');
        emit(state.copyWith(isLoading: false));
        // ignore: unawaited_futures
        _errorHandlerManager.handlerError(HyphaError(message: 'Error reading QR Code', type: HyphaErrorType.generic));
      }
    } catch (e) {
      LogHelper.e('Error parsing Scanned QR code');
      LogHelper.e(e.toString());
      emit(state.copyWith(isLoading: false));
      // ignore: unawaited_futures
      _errorHandlerManager.handlerError(HyphaError(message: 'Invalid QR Code', type: HyphaErrorType.generic));
    }
  }
}
