import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:share_plus/share_plus.dart';

class SaveKeyPage extends StatelessWidget {
  const SaveKeyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Save Key')),
      bottomNavigationBar: ElevatedButton(
        onPressed: () => Get.back(),
        child: Text("I've saved my Key"),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Text('Save your Key'),
          SizedBox(height: 16),
          Text('Write down your private key in a safe and secure place.'),
          SizedBox(height: 16),
          // TODO(gguij): add key
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: HyphaColors.white),
            child: ListTile(
              onTap: () async {
                await Share.share('words');
              },
              title: Text('THisIsTheKey', style: TextStyle(color: HyphaColors.black)),
              trailing: Icon(Icons.share, color: HyphaColors.black),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
