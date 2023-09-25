import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';

class JoinDaoRationaleBottomSheet extends StatelessWidget {
  final String daoName;
  final String secret;

  const JoinDaoRationaleBottomSheet({super.key, required this.daoName, required this.secret});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Do you want to join DAO $daoName?'),
        HyphaAppButton(
          title: 'Yes',
          onPressed: () {
            /// call to sign transaction
          },
        ),
        HyphaAppButton(
          title: 'Cancel',
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
