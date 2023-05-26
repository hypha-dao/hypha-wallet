import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/data/transaction_action_data.dart';

class WalletTransactionTile extends StatelessWidget {
  final TransactionDetailsCardData data;
  const WalletTransactionTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    LogHelper.d(data.toString());
    return ListTile(title: Text(data.memo ?? 'KAKA'),);
  }
}
