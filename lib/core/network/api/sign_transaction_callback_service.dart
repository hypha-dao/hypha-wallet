import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class SignTransactionCallbackService {
  final NetworkingManager _networkingManager;

  SignTransactionCallbackService(this._networkingManager);

  Future<Response> callTheCallback(String callback) async {
    return await _networkingManager.get(callback);
  }
}
