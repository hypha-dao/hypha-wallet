import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/home_page/usecases/parse_qr_code_use_case.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/data/transaction_action_data.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'page_command.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ParseQRCodeUseCase _parseQRCodeUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  HomeBloc(this._parseQRCodeUseCase, this._errorHandlerManager) : super(const HomeState()) {
    on<_Initial>(_initial);
    on<_OnQRCodeScanned>(_onQRCodeScanned);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<HomeState> emit) async {}

  FutureOr<void> _onQRCodeScanned(_OnQRCodeScanned event, Emitter<HomeState> emit) async {
    if (event.value.isEmpty) {
      return;
    }

    // TODO(gguij): show loading?
    final result =
        await _parseQRCodeUseCase.run(ParseQrCodeInput(scanResult: event.value, accountName: 'daohyphatest'));

    if (result.isValue) {
      final ScanQrCodeResultData value = result.asValue!.value;

      value.transaction.actions.forEach((EOSAction element) {
        LogHelper.d('MEssage Message transaction.actions EOSAction: element.name : ${element.name}');
        LogHelper.d('MEssage Message transaction.actions EOSAction: element.data : ${element.data}');
      });
      LogHelper.d('MEssage Message transaction.isValid ${value.transaction.isValid}');

      final transactionData = TransactionDetailsData(
          signingTitle: 'From hypha ${value.esr.actions.first.account}' ?? '',
          expirationTime: const Duration(seconds: 60),
          cards: value.transaction.actions.map((EOSAction e) {
            return TransactionDetailsCardData(
              params: e.data.map((key, value) => MapEntry(key, value.toString())),
              contractAction: '${e.account ?? ''} - ${e.name ?? ''}',
            );
          }).toList());
      emit(state.copyWith(command: PageCommand.navigateToTransactionDetails(transactionData)));
    } else {
      LogHelper.d('MEssage Message ${result.asError!.error}');
      _errorHandlerManager.handlerError(HyphaError(message: 'Error reading QR Code', type: HyphaErrorType.generic));
    }
  }
}
