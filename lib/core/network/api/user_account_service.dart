import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/dio_client.dart';

class UserAccountService {
  final DioClient dioClient;

  UserAccountService({required this.dioClient});

  // Future<Response> addUserApi(String name, String job) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.users,
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<Response> isUserAccountAvailable(String userAccount) async {
    try {
      return await dioClient.get(Endpoints.userAccountAvailable);
    } catch (e) {
      LogHelper.e(e.toString());
      rethrow;
    }
  }

  // Future<Response> updateUserApi(int id, String name, String job) async {
  //   try {
  //     final Response response = await dioClient.put(
  //       Endpoints.users + '/$id',
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<void> deleteUserApi(int id) async {
  //   try {
  //     await dioClient.delete(Endpoints.users + '/$id');
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
