import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalVoters extends StatelessWidget {
  final List<String> voters;

  const ProposalVoters(this.voters, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: List.generate(
          voters.take(9).length,
          (index) {
            return Positioned(
              left: index * 30.0,
              child: index == 8
                  ? Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: context.isDarkMode
                            ? HyphaColors.lightBlack
                            : HyphaColors.offWhite,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: HyphaColors.lightBlack,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '+${voters.length - 8}',
                          style: context.hyphaTextTheme.reducedTitles.copyWith(
                            color: context.isDarkMode
                                ? HyphaColors.offWhite
                                : HyphaColors.lightBlack,
                          ),
                        ),
                      ),
                    )
                  : const HyphaAvatarImage(
                      imageRadius: 24,
                      imageFromUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                    ),
            );
          },
        ),
      ),
    );
  }
}
