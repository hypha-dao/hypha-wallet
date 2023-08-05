import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ipfs_client_flutter/ipfs_client_flutter.dart';

class IPFSManager {
  final serverUlr = 'https://ipfs.infura.io:5001';
  late IpfsClient ipfsClient;

  IPFSManager() {
    final apiKeySecret = dotenv.env['IPFS_API_KEY_SECRET'];
    ipfsClient = IpfsClient(url: serverUlr, authorizationToken: apiKeySecret);
  }

  Future getImage(String imageToken) async {
    final response = await ipfsClient.read(dir: imageToken);
    return response;
  }
}
