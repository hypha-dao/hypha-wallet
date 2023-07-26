import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

extension NetworkingManagerNetwork on Network {
  NetworkingManager get manager => NetworkingManager(GetIt.I.get<RemoteConfigService>().baseUrl(network: this));
}
