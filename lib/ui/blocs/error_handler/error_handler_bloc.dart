import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_severity.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';

part 'error_handler_bloc.freezed.dart';
part 'error_handler_event.dart';
part 'error_handler_state.dart';
part 'page_command.dart';

class ErrorHandlerBloc extends Bloc<ErrorHandlerEvent, ErrorHandlerState> {
  final ErrorHandlerManager _errorHandlerManager;
  late final StreamSubscription _errorPipelineSubscription;

  ErrorHandlerBloc(this._errorHandlerManager) : super(const ErrorHandlerState()) {
    on<_OnError>(_onError);
    on<_OnClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));

    _errorPipelineSubscription = _errorHandlerManager.errorsPipeline.listen((error) {
      add(ErrorHandlerEvent.onError(error));
    });
  }

  void _onError(_OnError event, Emitter<ErrorHandlerState> emit) async {
    final HyphaError hyphaError = event.error;
    switch (hyphaError.type) {
      case HyphaErrorType.appVersionNotSupported:
      case HyphaErrorType.forceUpdate:
        emit(state.copyWith(pageCommand: const PageCommand.requestForceUpdate()));
        break;
      case HyphaErrorType.noConnectivity:
        if (hyphaError.severity == HyphaErrorSeverity.critical) {
          emit(state.copyWith(pageCommand: const PageCommand.showConnectivityErrorDialog()));
        } else {
          emit(state.copyWith(pageCommand: const PageCommand.showErrorMessage('No Connectivity')));
        }
        break;
      case HyphaErrorType.tokenExpired:
        emit(state.copyWith(pageCommand: const PageCommand.showReLoginDialog()));
        break;
      case HyphaErrorType.custom:
      case HyphaErrorType.generic:
        if (hyphaError.severity == HyphaErrorSeverity.critical) {
          emit(state.copyWith(pageCommand: PageCommand.showErrorDialog(hyphaError)));
        } else {
          emit(state.copyWith(pageCommand: PageCommand.showErrorMessage(hyphaError.message)));
        }
        break;
      case HyphaErrorType.api:
      case HyphaErrorType.unknown:
        emit(state.copyWith(pageCommand: PageCommand.showErrorMessage(hyphaError.message)));
        break;
    }
  }

  @override
  Future<void> close() {
    _errorPipelineSubscription.cancel();
    return super.close();
  }
}
