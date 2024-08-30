import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalHeader extends StatelessWidget {
  final String daoName;
  final String daoImageUrl;

  const ProposalHeader(this.daoName, this.daoImageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HyphaAvatarImage(
          imageRadius: 20,
          name: '',
          imageFromUrl: daoImageUrl,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            daoName,
            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'Marketing Circle',
          style: context.hyphaTextTheme.ralMediumSmallNote,
        ),
      ],
    );
  }
}
