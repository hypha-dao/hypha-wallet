import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/user_account_service.dart';
import 'package:hypha_wallet/core/network/dio_exception.dart';

// TODO(Nik): these API calls need your help
class UserAccountRepository {
  final UserAccountService userService;

  UserAccountRepository({required this.userService});

  /// This is so hacky...
  /// If the call fails means the account is available, if the call succeeds means the account is not available....
  Future<bool> isUserAccountAvailable(String userAccount) async {
    try {
      /// Dont even need the response, becuase we just need this to 'fail'...
      final Response response = await userService.isUserAccountAvailable(userAccount);
      return false;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      LogHelper.d(errorMessage);
      return true;
    }
  }

  // Future<NewUser> addNewUserRequested(String name, String job) async {
  //   try {
  //     final response = await userService.addUserApi(name, job);
  //     return NewUser.fromJson(response.data);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }

  // Future<NewUser> updateUserRequested(int id, String name, String job) async {
  //   try {
  //     final response = await userService.updateUserApi(id, name, job);
  //     return NewUser.fromJson(response.data);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }
  //
  // Future<void> deleteNewUserRequested(int id) async {
  //   try {
  //     await userService.deleteUserApi(id);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }
}
