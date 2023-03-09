import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class UserAccountList extends StatelessWidget {
  final List<UserProfileData> accounts;
  final Function(UserProfileData data)? onTap;

  const UserAccountList({super.key, required this.accounts, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: accounts
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                contentPadding: const EdgeInsets.all(14),
                tileColor: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
                title: Text(e.userName ?? e.accountName, style: context.hyphaTextTheme.smallTitles),
                leading: HyphaAvatarImage(
                  imageRadius: 24,
                  name: e.accountName.characters.first.capitalize,
                  imageFromUrl: e.userImage,
                ),
                subtitle: Text(e.accountName, style: context.hyphaTextTheme.ralMediumBody),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                onTap: () {
                  onTap?.call(e);
                },
              ),
            ),
          )
          .toList(),
    );
  }
}
