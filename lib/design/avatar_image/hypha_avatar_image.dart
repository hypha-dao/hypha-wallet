import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaAvatarImage extends StatelessWidget {
  final String? imageFromFile;
  final String? imageFromUrl;
  final String? name;
  final double imageRadius;
  final GestureTapCallback? onTap;

  const HyphaAvatarImage({
    super.key,
    this.imageFromFile,
    this.imageFromUrl,
    this.name,
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
          width: imageRadius * 2,
          height: imageRadius * 2,
          fit: BoxFit.cover,
        ),
      );
    } else if (imageFromUrl != null) {
      image = ClipOval(
        child: Image.network(
          imageFromUrl!,
          width: imageRadius * 2,
          height: imageRadius * 2,
        ),
      );
    } else if (name != null) {
      image = Container(
        width: imageRadius * 2,
        height: imageRadius * 2,
        decoration: const BoxDecoration(gradient: HyphaColors.gradientBlu, shape: BoxShape.circle),
        child: Center(
          child: Text(
            name!.characters.first.toUpperCase(),
            style: context.hyphaTextTheme.regular.copyWith(
              color: HyphaColors.white,
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      image = Icon(Icons.image_outlined, size: imageRadius, color: context.textTheme.titleSmall?.color);
    }

    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageRadius * 2),
          border: Border.all(
            width: 1,
            color: HyphaColors.primaryBlu,
            style: BorderStyle.solid,
          ),
        ),
        child: CircleAvatar(
          radius: imageRadius,
          backgroundColor: HyphaColors.transparent,
          child: image,
        ),
      ),
    );
  }
}
