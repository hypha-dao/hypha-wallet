import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalAdmin extends StatelessWidget {
  final String adminName;
  final String adminImageUrl;
  const ProposalAdmin(this.adminName, this.adminImageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HyphaAvatarImage(
          imageRadius: 24,
          imageFromUrl: adminImageUrl,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            adminName,
            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
          ),
        ),
      ],
    );
  }
}
