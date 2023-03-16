import 'package:equatable/equatable.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/network/api/remote_config_service.dart';

class EOSTransaction extends Equatable {
  final Networks network;
  final List<EOSAction> actions;
  bool get isValid => actions.isNotEmpty;

  bool get isTransfer => actions.length == 1 && actions.first.name == 'transfer';

  const EOSTransaction(this.actions, this.network);

  @override
  List<Object?> get props => [actions];

  factory EOSTransaction.fromESRActionsList(List<ESRAction> esrActions, Networks network) {
    final List<EOSAction> eosActions =
        esrActions.map((e) => EOSAction.fromESRAction(e)).where((item) => item.isValid).toList();
    return EOSTransaction(eosActions, network);
  }

  factory EOSTransaction.fromAction({
    required String account,
    required String actionName,
    required Map<String, dynamic> data,
    required Networks network,
  }) =>
      EOSTransaction([
        EOSAction()
          ..account = account
          ..name = actionName
          ..data = data
      ], network);
}
