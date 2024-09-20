import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/ipfs_image.dart';

class DaoImage extends StatelessWidget {
  final DaoData? dao;
  const DaoImage(this.dao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: ClipOval(
        child: IpfsImage(
          ipfsHash: dao?.logoIPFSHash ?? '',
          type: dao?.logoType ?? '',
        ),
      ),
    );
  }
}
