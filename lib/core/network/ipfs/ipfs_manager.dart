import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:ipfs_client_flutter/ipfs_client_flutter.dart';

class IPFSManager {
  final apiKey = '2TU6LIOvEczl1yQJlgOzNDWh4Ms';
  final apiKeySecret = '65d98b8d450753eba9a60caa1a7b1bcd';
  final serverUlr = 'https://ipfs.infura.io:5001';
  late IpfsClient ipfsClient;

  IPFSManager() {
    ipfsClient = IpfsClient(url: serverUlr, authorizationToken: apiKeySecret);
  }

  Future getImage(String imageToken) async {
    final response = await ipfsClient.read(dir: 'QmV3KmaoqCCXuCDvHzYWS9Jg3RfjrDTQSXK1e7453qfSRS:svg');
    LogHelper.d('IPSF = ' + response.toString());
    return response;
  }
}
