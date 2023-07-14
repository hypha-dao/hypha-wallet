import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/circle_with_icon/circle_with_icon.dart';
import 'package:hypha_wallet/design/circle_with_icon/color_arrow_up.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';
import 'package:hypha_wallet/ui/send/components/send_to_user_row.dart';
import 'package:hypha_wallet/ui/send/interactor/send_bloc.dart';
import 'package:hypha_wallet/ui/token/token_details/token_details_page.dart';
import 'package:intl/intl.dart';

class SendSuccessBottomSheet extends StatelessWidget {
  final String transactionId;

  const SendSuccessBottomSheet({
    super.key,
    required this.transactionId,
  });

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              const HyphaHalfBackground(showTopBar: true, height: 120),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 24, right: 24, bottom: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return Stack(
                          children: [
                            HyphaAvatarImage(
                              imageRadius: 50,
                              imageFromUrl: state.tokenData.image,
                              name: state.tokenData.name,
                            ),
                            const Positioned(bottom: 0, right: 0, child: ColorArrowUp()),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 12),
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return Text(
                          state.formattedAmount,
                          style: context.hyphaTextTheme.popsExtraLargeAndLight,
                        );
                      },
                    ),
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return Text(
                          state.tokenData.name,
                          style: context.hyphaTextTheme.ralMediumBody.copyWith(height: 0),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    HyphaCard(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Transferred on',
                                style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                DateFormat('h:mma | d MMM yyyy').format(DateTime.now()),
                                style: context.hyphaTextTheme.ralMediumSmallNote,
                                textAlign: TextAlign.right,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          const SizedBox(height: 22),
                          const HyphaDivider(),
                          const SizedBox(height: 22),
                          const SendToUserRow(imageRadius: 30),
                          const SizedBox(height: 22),
                          const HyphaDivider(),
                          const SizedBox(height: 22),
                          Text(
                            'Transaction ID',
                            style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            transactionId,
                            style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.primaryBlu),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 22),
                          const HyphaDivider(),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Status',
                                    style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                                  ),
                                  Text('Successful', style: context.hyphaTextTheme.ralMediumBody),
                                ],
                              ),
                              const CircleWithIcon(
                                icon: Icon(Icons.check, color: Colors.white),
                                circleColor: HyphaColors.success,
                                padding: EdgeInsets.all(20),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 56),
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return HyphaAppButton(
                          title: 'Close',
                          onPressed: () {
                            /// Navigate to home page, then to token details in the wallet page
                            Get.offAll(() => const HyphaBottomNavigation(initialPage: 1));
                            Get.to(TokensDetailsPage(data: state.tokenData));
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
