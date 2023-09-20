import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/transfer_tokens/send/interactor/send_bloc.dart';

class SendToUserRow extends StatelessWidget {
  final double imageRadius;

  const SendToUserRow({super.key, required this.imageRadius});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendBloc, SendState>(
      builder: (context, state) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: HyphaAvatarImage(
            imageRadius: imageRadius,
            name: state.receiverUser.userName,
            imageFromUrl: state.receiverUser.userImage,
          ),
          title: Text(
            state.receiverUser.userName ?? state.receiverUser.accountName,
            style: context.hyphaTextTheme.smallTitles,
          ),
          subtitle: Text('@${state.receiverUser.accountName}', style: context.hyphaTextTheme.ralMediumBody),
          trailing: HyphaCard(
            borderRadius: BorderRadius.circular(10),
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Text('To'),
            ),
          ),
        );
      },
    );
  }
}
