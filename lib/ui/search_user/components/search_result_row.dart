import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';

class SearchResultRow extends StatelessWidget {
  final UserProfileData member;
  final GestureTapCallback? onTap;

  const SearchResultRow({super.key, required this.member, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            HyphaAvatarImage(
              name:  member.accountName,
              imageFromUrl: member.userImage,
              imageRadius: 60,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            member.userNameOrAccount,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Status???',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(member.accountName)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
