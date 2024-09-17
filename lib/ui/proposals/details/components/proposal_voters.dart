import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalVoters extends StatelessWidget {
  final List<VoteModel> votes;

  const ProposalVoters(this.votes, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: List.generate(
          votes.take(9).length,
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
                          '+${votes.length - 8}',
                          style: context.hyphaTextTheme.reducedTitles.copyWith(
                            color: context.isDarkMode
                                ? HyphaColors.offWhite
                                : HyphaColors.lightBlack,
                          ),
                        ),
                      ),
                    )
                  : HyphaAvatarImage(
                      imageRadius: 24,
                      imageFromUrl: votes[index].voterImageUrl,
                      name: votes[index].voter,
                    ),
            );
          },
        ),
      ),
    );
  }
}
