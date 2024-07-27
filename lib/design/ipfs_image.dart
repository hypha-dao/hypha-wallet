import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Render an IPFS image
///
/// Images come in the form '<hash>:type' - we use type to render correctly
///
/// Supports svg and bitmap images
///
class IpfsImage extends StatelessWidget {
  final String ipfsHash;
  final String type;

  late final url = [
    'https://4everland.io/ipfs/$ipfsHash', // currently the only one that works...
    'https://ipfs.io/ipfs/$ipfsHash',
    'https://dweb.link/ipfs/$ipfsHash',
    'https://w3s.link/ipfs/$ipfsHash',
  ];

  IpfsImage({super.key, required this.ipfsHash, required this.type});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'svg':
        return SvgPicture.network(url[0]);
      case 'png':
      case 'jpg':
      case 'jpeg':
      case 'gif':
      case 'bmp':
      case 'webp':
        return Image.network(url[0]);
      default:
        return const Icon(Icons.error, color: Colors.red); // Default error icon in case the format isn't supported.
    }
  }
}
