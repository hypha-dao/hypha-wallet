import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:image_picker/image_picker.dart';

// TODO(Nik): these API calls need your help
class UserAccountService {
  final NetworkingManager networkingManager;

  UserAccountService({required this.networkingManager});

  Future<Response> isUserAccountAvailable(String userAccount) async {
    final requestBody = '{ "account_name": "$userAccount" }';

    return networkingManager.post(Endpoints.userAccountAvailable, data: requestBody);
  }

  Future<Response> createUserAccount({
    required String accountName,
    required String userName,
    XFile? image,
  }) async {
    // TODO(Nik): these API calls need your help
    return await Future.delayed(Duration(seconds: 3))
        .then((value) => Response(data: true, requestOptions: RequestOptions(path: 'MOCK')));
    // return await dioClient.post(Endpoints.userAccountAvailable, data: {
    //   'userAccount': userAccount,
    // });
  }
}
