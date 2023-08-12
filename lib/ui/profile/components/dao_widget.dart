import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';


/// Render an IPFS image
/// 
/// Images come in the form '<hash>:type' - we use type to render correctly
/// 
/// Supports svg and bitmap images
/// 
class IpfsImage extends StatelessWidget {
  final String ipfsHash;
  final String type;

  late final String url = 'https://ipfs.io/ipfs/$ipfsHash';

  IpfsImage({super.key, required this.ipfsHash, required this.type});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'svg':
        return SvgPicture.network(url);
      case 'png':
      case 'jpg':
      case 'jpeg':
      case 'gif':
      case 'bmp':
      case 'webp':
        return Image.network(url);
      default:
        return const Icon(Icons.error, color: Colors.red); // Default error icon in case the format isn't supported.
    }
  }
}

class DaoWidget extends StatelessWidget {
  final DaoData dao;

  const DaoWidget({
    super.key,
    required this.dao,
  });

  @override
  Widget build(BuildContext context) {
    return HyphaCard(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          /// Navigate to Hypha URL
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
