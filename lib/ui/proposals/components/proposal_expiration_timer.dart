import 'package:flutter/cupertino.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalExpirationTimer extends StatelessWidget {
  final String expiration;
  const ProposalExpirationTimer(this.expiration, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(CupertinoIcons.hourglass, color: HyphaColors.midGrey, size: 18),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            expiration,
            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
