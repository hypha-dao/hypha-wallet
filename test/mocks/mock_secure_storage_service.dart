import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';

class MockSecureStorageService extends SecureStorageService {
  UserAuthData? storage;
  MockSecureStorageService() : super(const FlutterSecureStorage());
  // static MockSecureStorageService instance() {
  //   return MockSecureStorageService();
  // }

  @override
  void setUserAuthData(UserAuthData userAuthData) async {
    storage = userAuthData;
  }

  @override
  Future<UserAuthData?> getUserAuthData() async {
    return storage;
  }

  @override
  Future<void> clearAllData() async {
    storage = null;
  }
}
