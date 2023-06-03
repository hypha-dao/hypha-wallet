import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class WalletAddTokenWidget extends StatelessWidget {
  final WalletTokenData token;
  final GestureTapCallback? onTap;

  const WalletAddTokenWidget({super.key, required this.token, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        child: DottedBorder(
          color: Colors.white,
          strokeWidth: 1,
          dashPattern: [2],
          borderType: BorderType.RRect,
          padding: const EdgeInsets.all(18),
          radius: const Radius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.add_outlined, size: 30, color: Colors.white),
              const SizedBox(height: 32),
              Text('Add', style: context.hyphaTextTheme.regular.copyWith(color: Colors.white)),
              Text('Tokens', style: context.hyphaTextTheme.regular.copyWith(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
