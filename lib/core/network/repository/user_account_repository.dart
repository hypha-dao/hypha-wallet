import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/hypha_member_service.dart';
import 'package:hypha_wallet/core/network/api/services/user_account_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class UserAccountRepository {
  final UserAccountService _userService;
  final HyphaMemberService _memberService;

  UserAccountRepository({required UserAccountService userService, required HyphaMemberService memberService})
      : _userService = userService,
        _memberService = memberService;

  Future<bool> isUserAccountAvailable(String userAccount) async {
    return _userService.isUserAccountAvailable(userAccount);
  }

  Future<String> findAvailableUserAccount(String fullName) async {
    return _userService.findAvailableUserAccount(fullName);
  }

  Future<Result<List<String>, HyphaError>> findHyphaAccounts(String prefix) {
    return _memberService.findHyphaAccounts(prefix: prefix);
  }
}
