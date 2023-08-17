import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/network/api/services/pay_cpu_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';

class FreeTransactionUseCase {
  final PayForCpuService _payForCpuService;

  FreeTransactionUseCase(this._payForCpuService);

  Future<EOSAction?> run(UserProfileData user, Network network) async {
    final result = await _payForCpuService.getFreeCpuAction(user, network);
    if (result.isValue) {
      return result.asValue!.value;
    } else {
      print("Something went wrong, can't create free transaction: ${result.asError}");
      return null;
    }
  }
}
