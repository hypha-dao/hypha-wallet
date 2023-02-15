import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class ProfileService {
  Future<Result<ProfileData, HyphaError>> getProfile(String accountName) async {
    final dio = Dio();
    final url = '${Endpoints.profileServiceEndpoint}${Endpoints.pppProfile}/$accountName';
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      final map = Map<String, dynamic>.from(response.data);
      final profile = ProfileData.fromJson(map);
      // print("proflle image ${profile.image}");
      return Result.value(ProfileData.fromJson(map));
    } else {
      print('get profile error: ${response.statusCode} ${response.statusMessage}');
      return Result.error(HyphaError(type: HyphaErrorType.api, message: 'server error ${response.statusMessage}'));
    }
  }
}
