import 'package:flutter/cupertino.dart';

class HyphaSafeBottomNavigationBar extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;

  const HyphaSafeBottomNavigationBar({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.only(left: 45, right: 45, bottom: 12),
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
