import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
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
            color: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.midGrey.withOpacity(0.10),
            shape: BoxShape.circle,
          ),
        );
      case RequirementState.completed:
        return Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            color: HyphaColors.success,
            shape: BoxShape.circle,
          ),
        );
      case RequirementState.failed:
        return Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            color: HyphaColors.error,
            shape: BoxShape.circle,
          ),
        );
      case RequirementState.loading:
        return Container(
          width: size,
          height: size,
          child: const CircularProgressIndicator(color: HyphaColors.primaryBlu, strokeWidth: 1),
        );
    }
  }
}
