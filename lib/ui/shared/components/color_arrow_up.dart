import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class ColorArrowUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(color: HyphaColors.lightBlue, shape: BoxShape.circle),
      child: Icon(Icons.arrow_upward, color: Colors.white),
    );
  }
}
