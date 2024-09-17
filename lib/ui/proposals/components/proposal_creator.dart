import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class ProposalCreator extends StatelessWidget {
  final ProfileData? creator;
  const ProposalCreator(this.creator, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HyphaAvatarImage(
          imageRadius: 24,
          imageFromUrl: creator?.avatarUrl,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            creator?.name ?? '',
            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
          ),
        ),
      ],
    );
  }
}
