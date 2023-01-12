import 'package:hypha_wallet/core/network/api/user_account_service.dart';

// TODO(Nik): these API calls need your help
class UserAccountRepository {
  final UserAccountService userService;

  UserAccountRepository({required this.userService});

  Future<bool> isUserAccountAvailable(String userAccount) async {
    return await userService.isUserAccountAvailable(userAccount);
  }

  Future<String> findAvailableUserAccount(String fullName) async {
    return await userService.findAvailableUserAccount(fullName);
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
