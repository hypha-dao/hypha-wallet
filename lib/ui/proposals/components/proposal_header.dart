import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/ipfs_image.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalHeader extends StatelessWidget {
  final DaoData? _daoData;
  const ProposalHeader(this._daoData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color:
            Colors.white,
          ),
          child: ClipOval(
            child: IpfsImage(
              ipfsHash: _daoData?.logoIPFSHash ?? '',
              type: _daoData?.logoType ?? '',
            ),
          ),
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            _daoData?.settingsDaoTitle ?? '',
            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 10),
        // TODO(Zied-Saif): figure this out
        Text(
          'Marketing Circle',
          style: context.hyphaTextTheme.ralMediumSmallNote,
        ),
      ],
    );
  }
}
