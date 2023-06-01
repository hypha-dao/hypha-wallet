import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class WalletTransactionTile extends StatelessWidget {
  final String name;
  final DateTime time;
  final String tokenImage;
  final String amount;
  final String tokenName;
  final bool isReceived;
  final String? userProfileImage;

  const WalletTransactionTile({
    super.key,
    required this.name,
    required this.time,
    required this.tokenImage,
    required this.amount,
    required this.tokenName,
    required this.isReceived,
    this.userProfileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: HyphaCard(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: HyphaAvatarImage(imageFromUrl: userProfileImage, imageRadius: 20, name: name),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(name, style: context.hyphaTextTheme.reducedTitles),
                    const SizedBox(height: 4),
                    Text(timeago.format(time), style: context.hyphaTextTheme.ralMediumLabel),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(amount, style: context.hyphaTextTheme.regular),
                  Text(tokenName, style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.lightBlue)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
