import 'dart:io';

import 'package:flutter/material.dart';

class HyphaAvatarImage extends StatelessWidget {
  final String? imageFromFile;
  final String? imageFromUrl;
  final double imageRadius;

  const HyphaAvatarImage({super.key, this.imageFromFile, this.imageFromUrl, required this.imageRadius});

  @override
  Widget build(BuildContext context) {
    Widget image;
    if (imageFromFile != null) {
      image = ClipOval(
        child: Image.file(
          File(imageFromFile!),
          width: imageRadius * 2,
          height: imageRadius * 2,
          fit: BoxFit.cover,
        ),
      );
    } else if (imageFromUrl != null) {
      image = ClipOval(child: Image.network(imageFromUrl!));
    } else {
      image = Icon(Icons.ac_unit_outlined);
    }

    return CircleAvatar(
      radius: imageRadius,
      child: image,
    );
  }
}
