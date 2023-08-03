import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/ipfs/ipfs_manager.dart';
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
                  // leading: FutureBuilder<String>(
                  //   future: GetIt.I.get<IPFSManager>().,
                  //   builder: (context, snapshot) {
                  //     if (snapshot.connectionState == ConnectionState.waiting) {
                  //       return CircularProgressIndicator();
                  //     } else if (snapshot.hasError) {
                  //       return Text('Error: ${snapshot.error}');
                  //     } else {
                  //       return SvgPicture.string(snapshot.data!);
                  //     }
                  //   },
                  // ),
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

// Future<String> fetchSVGFromIPFS(String ipfsHash) async {
//   final ipfsURL = 'https://ipfs.io/ipfs/$ipfsHash:svg';
//   final response = await http.get(Uri.parse(ipfsURL));
//
//   if (response.statusCode == 200) {
//     return response.body;
//   } else {
//     throw Exception('Failed to fetch SVG from IPFS. Status code: ${response.statusCode}');
//   }
// }
