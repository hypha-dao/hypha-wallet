import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/dio_client.dart';

// TODO(Nik): these API calls need your help
class UserAccountService {
  final DioClient dioClient;

  UserAccountService({required this.dioClient});

  Future<Response> isUserAccountAvailable(String userAccount) async {
    return await dioClient.get(Endpoints.userAccountAvailable);
  }

  Future<Response> createUserAccount(String userAccount) async {
    // TODO(Nik): these API calls need your help
    return await Future.delayed(Duration(seconds: 3))
        .then((value) => Response(data: true, requestOptions: RequestOptions(path: 'MOCK')));
    // return await dioClient.post(Endpoints.userAccountAvailable, data: {
    //   'userAccount': userAccount,
    // });
  }
}
