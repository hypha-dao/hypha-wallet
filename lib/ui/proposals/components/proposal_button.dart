import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;
  const ProposalButton(this.text, this.icon, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: context.isDarkTheme
              ? HyphaColors.midGrey.withOpacity(0.10)
              : HyphaColors.midGrey.withOpacity(0.05),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: context.hyphaTextTheme.ralBold,
            ),
            const SizedBox(width: 8),
            Icon(icon, size: icon == Icons.arrow_forward_ios ? 14 : 26),
          ],
        ),
      ),
    );
  }
}
