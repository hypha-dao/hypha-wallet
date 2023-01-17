import 'package:equatable/equatable.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';

class EOSTransaction extends Equatable {
  final List<EOSAction> actions;
  bool get isValid => actions.isNotEmpty;

  bool get isTransfer => actions.length == 1 && actions.first.name == 'transfer';

  const EOSTransaction(this.actions);

  @override
  List<Object?> get props => [actions];

  factory EOSTransaction.fromESRActionsList(List<ESRAction> esrActions) {
    final List<EOSAction> eosActions =
        esrActions.map((e) => EOSAction.fromESRAction(e)).where((item) => item.isValid).toList();
    return EOSTransaction(eosActions);
  }

  factory EOSTransaction.fromAction({
    required String account,
    required String actionName,
    required Map<String, dynamic> data,
  }) =>
      EOSTransaction([
        EOSAction()
          ..account = account
          ..name = actionName
          ..data = data
      ]);
}
