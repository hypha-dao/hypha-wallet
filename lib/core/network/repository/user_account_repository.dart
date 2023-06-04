import 'package:hypha_wallet/core/network/api/services/user_account_service.dart';

class UserAccountRepository {
  final UserAccountService userService;

  UserAccountRepository({required this.userService});

  Future<bool> isUserAccountAvailable(String userAccount) async {
    return userService.isUserAccountAvailable(userAccount);
  }

  Future<String> findAvailableUserAccount(String fullName) async {
    return userService.findAvailableUserAccount(fullName);
  }
}
