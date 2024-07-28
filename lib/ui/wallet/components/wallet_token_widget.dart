import 'package:flutter/cupertino.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class WalletTokenWidget extends StatelessWidget {
  final WalletTokenData token;
  final GestureTapCallback? onTap;

  const WalletTokenWidget({super.key, required this.token, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 119.0,
        width: 118.0,
        child: HyphaCard(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HyphaAvatarImage(imageRadius: 18, imageFromUrl: token.image, name: token.name),
                const Spacer(),
                Text(
                  token.userOwnedAmount?.toString() ?? 'n/a',
                  style: context.hyphaTextTheme.regular,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  token.name,
                  style: context.hyphaTextTheme.regular,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
