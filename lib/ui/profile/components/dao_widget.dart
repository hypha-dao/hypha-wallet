import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/ipfs_image.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DaoWidget extends StatelessWidget {
  final DaoData dao;

  String get daoUrl => 'https://dao.hypha.earth/${dao.settingsDaoUrl}';

  const DaoWidget({
    super.key,
    required this.dao,
  });

  @override
  Widget build(BuildContext context) {
    return HyphaCard(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () async {
          if (!await launchUrl(Uri.parse(daoUrl), mode: LaunchMode.externalApplication)) {
            throw Exception('Could not launch $daoUrl');
          }
        },
        child: Stack(
          children: [
            const Positioned(
              right: 12,
              top: 12,
              child: Icon(Icons.navigate_next),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Colors.white, // Note: white bg is standard on the DAO website where people upload images
                        ),
                        child: ClipOval(
                          child: IpfsImage(
                            ipfsHash: dao.logoIPFSHash,
                            type: dao.logoType,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dao.settingsDaoTitle, style: context.hyphaTextTheme.smallTitles),
                          Text(
                            'dao.hypha.earth/${dao.settingsDaoUrl}',
                            style: context.hyphaTextTheme.reducedTitles.copyWith(color: HyphaColors.primaryBlu),
                          ),
                        ],
                      )
                    ],
                  ),
                  // const SizedBox(height: 12),
                  // const HyphaDivider(),
                  // const SizedBox(height: 12),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         const Icon(Icons.calendar_month),
                  //         const SizedBox(width: 4),
                  //         Text(
                  //           'The date here',
                  //           style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(
                  //             height: 0,
                  //             color: HyphaColors.midGrey,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     Text('Core member', style: context.hyphaTextTheme.ralMediumBody.copyWith(height: 0)),
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
