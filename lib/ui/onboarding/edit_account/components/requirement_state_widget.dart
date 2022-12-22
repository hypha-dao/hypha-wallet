import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/data/user_account_requirement.dart';

class RequirementStateWidget extends StatelessWidget {
  final RequirementState state;

  const RequirementStateWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final size = 16.0;

    switch (state) {
      case RequirementState.empty:
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: HyphaColors.white),
          ),
        );
      case RequirementState.completed:
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        );
      case RequirementState.failed:
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        );
    }
  }
}
