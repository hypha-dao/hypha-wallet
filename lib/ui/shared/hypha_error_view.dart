import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_grid.dart';

class HyphaErrorWidget extends StatelessWidget {
  final VoidCallback? onRefreshPressed;

  const HyphaErrorWidget({super.key, this.onRefreshPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HyphaGrid.allMargins,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Something went wrong', textAlign: TextAlign.center),
          const SizedBox(height: 8),
          const Text(
            "Sorry, we couldn't load the content on this page. Please refresh to try again.",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          if (onRefreshPressed != null)
            TextButton(
              onPressed: onRefreshPressed,
              child: const Text('Refresh'),
            ),
        ],
      ),
    );
  }
}
