import 'dart:io';

import 'package:flutter/material.dart';

class HyphaAvatarImage extends StatelessWidget {
  final String? imageFromFile;
  final String? imageFromUrl;
  final double imageRadius;
  final GestureTapCallback? onTap;

  const HyphaAvatarImage({
    super.key,
    this.imageFromFile,
    this.imageFromUrl,
    required this.imageRadius,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget image;
    if (imageFromFile != null) {
      image = ClipOval(
        child: Image.file(
          File(imageFromFile!),
          width: imageRadius * 4,
          height: imageRadius * 4,
          fit: BoxFit.cover,
        ),
      );
    } else if (imageFromUrl != null) {
      image = ClipOval(child: Image.network(imageFromUrl!));
    } else {
      image = Icon(Icons.add_photo_alternate_outlined, size: imageRadius * 2);
    }

    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: imageRadius * 2,
        child: image,
      ),
    );
  }
}
