import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
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
    final result = await _parseQRCodeUseCase.run(event.value);

    if (result.isValue) {
      final transactionData = TransactionDetailsData(
          signingTitle: 'From hypha DAO on Telos',
          expirationTime: Duration(seconds: 60),
          cards: [
            TransactionDetailsCardData(
                items: {'account_name': 'luigicarlini', 'login_code': '668888666888666'},
                primaryText: 'Login User',
                secondaryText: 'Eosio.login - loginuser')
          ]);
      emit(state.copyWith(command: PageCommand.navigateToTransactionDetails(transactionData)));
    } else {
      _errorHandlerManager.handlerError(HyphaError(message: 'Error reading QR Code', type: HyphaErrorType.generic));
    }
  }
}
