import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class OnboardingAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subTitle;
  const OnboardingAppbar({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: HyphaColors.transparent,
      elevation: 0,
      title: Column(
        children: [
          Text(title, style: context.hyphaTextTheme.smallTitles),
          Text(subTitle, style: context.hyphaTextTheme.smallTitles),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
