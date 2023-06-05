import 'package:flutter/material.dart';

class HyphaProgressIndicator extends StatelessWidget {
  final double width;
  final double height;
  final double strokeWidth;
  final Color? color;

  const HyphaProgressIndicator({
    super.key,
    this.width = 24,
    this.height = 24,
    this.strokeWidth = 4.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircularProgressIndicator(strokeWidth: strokeWidth, color: color),
    );
  }
}
