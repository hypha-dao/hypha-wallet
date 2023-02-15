import 'package:hypha_wallet/core/network/api/user_account_service.dart';

class UserAccountRepository {
  final UserAccountService userService;

  UserAccountRepository({required this.userService});

  Future<bool> isUserAccountAvailable(String userAccount) async {
    return await userService.isUserAccountAvailable(userAccount);
  }

  Future<String> findAvailableUserAccount(String fullName) async {
    return await userService.findAvailableUserAccount(fullName);
  }
}
