import 'package:flutter/cupertino.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/wallet/data/token_data.dart';

class WalletTokenWidget extends StatelessWidget {
  final TokenData token;
  final GestureTapCallback? onTap;

  const WalletTokenWidget({super.key, required this.token, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        child: HyphaCard(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HyphaAvatarImage(imageRadius: 18, imageFromUrl: token.image, name: token.name),
                const SizedBox(height: 32),
                Text(token.amount.toString(), style: context.hyphaTextTheme.regular),
                Text(token.name, style: context.hyphaTextTheme.regular),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
