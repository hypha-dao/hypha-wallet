import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
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
      padding: const EdgeInsets.only(left: 26, right: 26),
      child: ListTile(
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(name, style: context.hyphaTextTheme.reducedTitles),
        subtitle: Text(timeago.format(time), style: context.hyphaTextTheme.ralMediumLabel),
        leading: HyphaAvatarImage(imageFromUrl: userProfileImage, imageRadius: 16, name: name),
        tileColor: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.lightBlue,
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(amount, style: context.hyphaTextTheme.regular),
            Text(tokenName, style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.lightBlue)),
          ],
        ),
      ),
    );
  }
}
