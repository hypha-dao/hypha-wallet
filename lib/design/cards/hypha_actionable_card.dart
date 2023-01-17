import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaActionableCard extends StatelessWidget {
  final Icon? icon;
  final String title;
  final Widget? trailer;
  final String subtitle;
  final GestureTapCallback? onTap;

  const HyphaActionableCard({
    super.key,
    this.icon,
    required this.title,
    this.trailer,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (icon != null) ...[
                    icon!,
                    const SizedBox(width: 8),
                  ],
                  Expanded(child: Text(title, style: context.hyphaTextTheme.smallTitles)),
                  if (trailer != null) ...[trailer!],
                ],
              ),
              const SizedBox(height: 14),
              const HyphaDivider(),
              const SizedBox(height: 18),
              Text(subtitle, style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey)),
            ],
          ),
        ),
      ),
    );
  }
}
