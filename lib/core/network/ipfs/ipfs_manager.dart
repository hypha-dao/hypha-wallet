import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:ipfs_client_flutter/ipfs_client_flutter.dart';

class IPFSManager {
  final apiKey = 'apiKey';
  final apiKeySecret = 'apiKeySecret';
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
