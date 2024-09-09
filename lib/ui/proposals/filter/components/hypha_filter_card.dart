import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaFilterCard extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String? subTitle;
  final bool isSelected;

  const HyphaFilterCard(
      {required this.title,
      this.isSelected = false,
      this.subTitle,
      this.imageUrl,
      super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaCard(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          if (imageUrl != null)
            HyphaAvatarImage(
              imageRadius: 24,
              imageFromUrl: imageUrl,
            ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.hyphaTextTheme.smallTitles,
              ),
              if (subTitle != null)
                Text(
                  subTitle!,
                  style: context.hyphaTextTheme.ralMediumBody
                      .copyWith(color: HyphaColors.midGrey),
                ),
            ],
          ),
          const Spacer(),
          if (isSelected)
            const CircleAvatar(
              radius: 12,
              backgroundColor: HyphaColors.primaryBlu,
            )
        ],
      ),
    ));
  }
}
