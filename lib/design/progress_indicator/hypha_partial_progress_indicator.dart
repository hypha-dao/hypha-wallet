import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_indicator.dart';

/// This widget will overlay a 24x24 progress indicator on top of its child.
/// It will use a screen to make sure the loading indicator works on top of any surface.
class HyphaPartialProgressIndicator extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final EdgeInsets padding;

  const HyphaPartialProgressIndicator({
    super.key,
    required this.isLoading,
    required this.child,
    this.padding = const EdgeInsets.all(24),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        if (isLoading)
          Container(
            padding: padding,
            decoration: BoxDecoration(
              color: HyphaColors.black50,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: const HyphaProgressIndicator(),
          ),
      ],
    );
  }
}
