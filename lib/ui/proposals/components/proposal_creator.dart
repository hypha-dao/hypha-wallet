import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalCreator extends StatelessWidget {
  final String creatorName;
  final String creatorImageUrl;
  const ProposalCreator(this.creatorName, this.creatorImageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HyphaAvatarImage(
          imageRadius: 24,
          imageFromUrl: creatorImageUrl,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            creatorName,
            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
          ),
        ),
      ],
    );
  }
}
