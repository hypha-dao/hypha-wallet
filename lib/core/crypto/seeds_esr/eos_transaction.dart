import 'package:equatable/equatable.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart' as esr;
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart' as eos;
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/network/models/network.dart';

class EOSTransaction extends Equatable {
  final Network network;
  final List<EOSAction> actions;
  final bool hasFreeCpuAction;

  bool get isValid => actions.isNotEmpty;
  bool get isTransfer => actions.length == 1 && actions.first.name == 'transfer';

  const EOSTransaction(this.actions, this.network, {this.hasFreeCpuAction = false});

  @override
  List<Object?> get props => [actions, network];

  factory EOSTransaction.fromESRActionsList(List<esr.ESRAction> esrActions, Network network) {
    final List<EOSAction> eosActions =
        esrActions.map((e) => EOSAction.fromESRAction(e)).where((item) => item.isValid).toList();
    return EOSTransaction(eosActions, network);
  }

  factory EOSTransaction.fromAction({
    required String account,
    required String actionName,
    required Map<String, dynamic> data,
    List<eos.Authorization?>? authorization,
    required Network network,
  }) =>
      EOSTransaction([
        EOSAction()
          ..account = account
          ..name = actionName
          ..data = data
          ..authorization = authorization,
      ], network);

  EOSTransaction copyPrefixedWithAction(EOSAction action, {hasFreeCpuAction = false}) =>
      EOSTransaction([action, ...actions], network, hasFreeCpuAction: hasFreeCpuAction);
}

// Convenience to easily display free CPU action separate from the other actions.
extension FreeEosTransaction on EOSTransaction {
  EOSAction? get freeAction => hasFreeCpuAction ? actions[0] : null;
  List<EOSAction> get otherActions => hasFreeCpuAction ? actions.sublist(1) : actions;
}
