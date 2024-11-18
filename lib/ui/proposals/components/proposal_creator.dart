import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class ProposalCreator extends StatelessWidget {
  final ProfileData? creator;
  final bool isColumn;

  const ProposalCreator(this.creator, {this.isColumn = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HyphaAvatarImage(
          imageRadius: 24,
          imageFromUrl: creator?.avatarUrl,
          name: creator?.name,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: isColumn
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children(context),
          )
              : Row(
            children: children(context),
          ),
        ),
      ],
    );
  }

  List<Widget> children(BuildContext context) {
    return [
      Text(
        creator?.name ?? '',
        style: context.hyphaTextTheme.reducedTitles,
      ),
      if (!isColumn) ... [
        const SizedBox(width: 10),
        Expanded(
          child: text(context)
        ),
      ],
      if(isColumn)
        text(context)
    ];
  }

  Widget text(BuildContext context){
    return Text(
      creator?.account ?? '',
      style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(
        color: isColumn ? HyphaColors.midGrey : HyphaColors.primaryBlu,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
