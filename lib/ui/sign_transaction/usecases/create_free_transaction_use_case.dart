import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/network/api/services/pay_cpu_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';

class FreeTransactionUseCase {
  final PayForCpuService _payForCpuService;

  FreeTransactionUseCase(this._payForCpuService);

  /// Creates a free transaction if the user is eligible for free transactions
  /// A free transaction will have the EOSTransaction.hasFreeCpuAction set to true
  /// A free transaction's first action is the pay CPU action
  Future<EOSTransaction> run(UserProfileData user, EOSTransaction inputTransaction) async {
    final result = await _payForCpuService.buildFreeTransaction(user, inputTransaction);
    if (result.isValue) {
      return result.asValue!.value;
    } else {
      print("Something went wrong, can't create free transaction: ${result.asError}");
      return inputTransaction;
    }
  }
}
