import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class IpfsImage2 extends StatefulWidget {
  final String ipfsHash;
  final String type;
  final double? width;
  final double? height;

  const IpfsImage2({
    super.key,
    required this.ipfsHash,
    required this.type,
    this.width,
    this.height,
  });

  @override
  _IpfsImageState createState() => _IpfsImageState();
}

class _IpfsImageState extends State<IpfsImage2> {
  late Future<String> _imageFuture;

  @override
  void initState() {
    super.initState();
    _imageFuture = _fetchIpfsImage();
  }

  Future<String> _fetchIpfsImage() async {
    final apiKey = dotenv.env['IPFS_API_KEY'];
    final apiKeySecret = dotenv.env['IPFS_API_KEY_SECRET'];
    final credentials = '$apiKey:$apiKeySecret';

    final response = await http.post(
      Uri.parse('https://ipfs.infura.io:5001/api/v0/cat?arg=${widget.ipfsHash}'),
      headers: {
        'Authorization': 'Basic ${base64Encode(utf8.encode(credentials))}',
      },
    );

    if (response.statusCode == 200) {
      return base64Encode(response.bodyBytes);
    } else {
      throw Exception('Failed to load IPFS image');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _imageFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox(
            width: widget.width,
            height: widget.height,
            child: const CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Icon(Icons.error, color: Colors.red);
        } else if (snapshot.hasData) {
          final imageData = snapshot.data!;
          if (widget.type.toLowerCase() == 'svg') {
            return SvgPicture.memory(
              base64Decode(imageData),
              width: widget.width,
              height: widget.height,
              fit: BoxFit.cover,
            );
          } else {
            return Image.memory(
              base64Decode(imageData),
              width: widget.width,
              height: widget.height,
              fit: BoxFit.cover,
            );
          }
        } else {
          return const Icon(Icons.error, color: Colors.red);
        }
      },
    );
  }
}
