import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class ProfileService extends NetworkingManager {
  final RemoteConfigService _remoteConfigService;

  ProfileService(this._remoteConfigService) : super(_remoteConfigService.profileServiceEndpoint);

  Future<Result<ProfileData, HyphaError>> getProfile(String accountName, Network network) async {
    final url =
        '${_remoteConfigService.profileServiceEndpoint}${Endpoints.pppProfile}/$accountName?network=${network.name}';
    try {
      final response = await get(url);
      if (response.statusCode == 200) {
        final map = Map<String, dynamic>.from(response.data);
        return Result.value(ProfileData.fromJson(map, network, []));
      } else {
        print('get profile status error: ${response.statusCode} ${response.statusMessage}');
        return Result.error(HyphaError(type: HyphaErrorType.api, message: 'server error ${response.statusMessage}'));
      }
    } catch (error) {
      // note: 500 status on get throws an error
      print('get profile error: $error');
      return Result.error(HyphaError(type: HyphaErrorType.api, message: 'server error $error'));
    }
  }
}
