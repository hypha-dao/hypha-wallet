import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/user_account_error.dart';

class UserAccountRequirement {
  final UserAccountError error;
  final RequirementState state;

  UserAccountRequirement({
    required this.error,
    this.state = RequirementState.empty,
  });

  UserAccountRequirement updateState(RequirementState state) => UserAccountRequirement(state: state, error: this.error);
}

enum RequirementState {
  empty,
  completed,
  failed,
  loading,
}
