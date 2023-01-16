import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: HyphaColors.transparent,
            body: Stack(
              children: [
                const HyphaHalfBackground(),
                Padding(
                  padding: const EdgeInsets.all(26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          HyphaAvatarImage(
                            imageRadius: 50,
                            // imageFromFile: _file?.path,
                            onTap: () async {
                              final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
                              // setState(() {
                              //   _file = image;
                              // });
                            },
                          ),
                          Positioned(
                            top: -10,
                            right: -10,
                            child: IconButton(
                                onPressed: () async {
                                  // if (_file != null) {
                                  //   setState(() {
                                  //     _file = null;
                                  //   });
                                  // } else {
                                  //   final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
                                  //   setState(() {
                                  //     _file = image;
                                  //   });
                                  // }
                                },
                                icon: const Icon(null == null ? Icons.add_circle : Icons.remove_circle)),
                          )
                        ],
                      ),
                      const SizedBox(height: 14),
                      Text(state.authenticatedData?.userName ?? '', style: context.hyphaTextTheme.mediumTitles),
                      const SizedBox(height: 4),
                      Text('@${state.authenticatedData?.accountName ?? ''}',
                          style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.lightBlue)),
                      const SizedBox(height: 24),
                      const HyphaActionableCard(
                        trailer: Icon(Icons.edit),
                        title: 'Short Bio',
                        subtitle:
                            'Write here your short bio! Let other hypha network people know a little bit about yourself and what you are doing here.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
