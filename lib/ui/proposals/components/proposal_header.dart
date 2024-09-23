import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/dao_image.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class ProposalHeader extends StatelessWidget {
  final DaoData? _dao;
  const ProposalHeader(this._dao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DaoImage(_dao),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            _dao?.settingsDaoTitle ?? '',
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
