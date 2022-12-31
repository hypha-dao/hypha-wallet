import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/dio_client.dart';
import 'package:image_picker/image_picker.dart';

// TODO(Nik): these API calls need your help
class UserAccountService {
  final DioClient dioClient;

  UserAccountService({required this.dioClient});

  Future<Response> isUserAccountAvailable(String userAccount) async {
    return await dioClient.get(Endpoints.userAccountAvailable);
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
