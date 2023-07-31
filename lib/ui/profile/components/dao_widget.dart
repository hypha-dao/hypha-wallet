import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class DaoWidget extends StatelessWidget {
  final DaoData dao;

  const DaoWidget({
    super.key,
    required this.dao,
  });

  @override
  Widget build(BuildContext context) {
    // final base64String = dao.settingsLogo;
    // String svgString = String.fromCharCodes(base64Decode(base64String));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: HyphaCard(
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 12, bottom: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  dense: true,
                  // leading: ClipOval(child: SvgPicture.string(
                  //   svgString,
                  //   width: 24,
                  //   height: 24,
                  //   fit: BoxFit.contain,
                  // )),
                  visualDensity: VisualDensity.compact,
                  title: Text(dao.settingsDaoTitle, style: context.hyphaTextTheme.smallTitles),
                ),
                // const SizedBox(height: 14),
                // const HyphaDivider(),
                // const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
