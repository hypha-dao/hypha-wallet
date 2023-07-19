import 'package:flutter/cupertino.dart';

class CircleWithIcon extends StatelessWidget {
  final Icon icon;
  final Color circleColor;
  final EdgeInsets padding;

  const CircleWithIcon({
    super.key,
    required this.icon,
    required this.circleColor,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(color: circleColor, shape: BoxShape.circle),
      child: icon,
    );
  }
}
