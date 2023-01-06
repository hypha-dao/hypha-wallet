import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

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
      image = Icon(Icons.image_outlined, size: imageRadius * 2, color: context.textTheme.titleSmall?.color);
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageRadius * 2),
          border: Border.all(
            width: 1,
            color: HyphaColors.primary,
            style: BorderStyle.solid,
          ),
        ),
        child: CircleAvatar(
          radius: imageRadius * 2,
          backgroundColor: HyphaColors.transparent,
          child: image,
        ),
      ),
    );
  }
}
