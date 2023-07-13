import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class WalletTransactionTile extends StatelessWidget {
  final WalletTransactionTileData data;

  const WalletTransactionTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          HyphaCard(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: HyphaAvatarImage(imageFromUrl: data.userProfileImage, imageRadius: 20, name: data.name),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(data.name, style: context.hyphaTextTheme.reducedTitles),
                        const SizedBox(height: 4),
                        Text(timeago.format(data.time), style: context.hyphaTextTheme.ralMediumLabel),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          HyphaAvatarImage(imageRadius: 10, imageFromUrl: data.tokenImage, name: data.tokenName),
                          Text(data.amount, style: context.hyphaTextTheme.regular),
                        ],
                      ),
                      Text(
                        data.tokenName,
                        style: context.hyphaTextTheme.regular.copyWith(
                          color: HyphaColors.lightBlue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: -4,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                data.isReceived ? Icons.arrow_downward : Icons.arrow_upward,
                color: data.isReceived ? Colors.green : HyphaColors.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WalletTransactionTileData {
  final String name;
  final DateTime time;
  final String tokenImage;
  final String amount;
  final String tokenName;
  final bool isReceived;
  final bool isTransfer;
  final String? userProfileImage;
  final String? to;
  final String? from;

  WalletTransactionTileData({
    required this.name,
    required this.time,
    required this.tokenImage,
    required this.amount,
    required this.tokenName,
    required this.isReceived,
    required this.isTransfer,
    this.to,
    this.from,
    this.userProfileImage,
  });
}
