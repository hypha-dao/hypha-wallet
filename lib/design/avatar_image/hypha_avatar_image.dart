import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaAvatarImage extends StatelessWidget {
  final String? imageFromFile;
  final String? imageFromUrl;
  final String? name;
  final double imageRadius;
  final GestureTapCallback? onTap;
  final bool withBorder;

  const HyphaAvatarImage({
    super.key,
    this.imageFromFile,
    this.imageFromUrl,
    this.name,
    required this.imageRadius,
    this.onTap,
    this.withBorder = false,
  });

  bool get hasImage => imageFromUrl != null || imageFromFile != null;

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
        child: CachedNetworkImage(
          imageUrl: imageFromUrl!,
          width: imageRadius * 2,
          height: imageRadius * 2,
          fit: BoxFit.cover,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => _buildFallbackAvatar(context),
        ),
      );
    } else if (name != null) {
      image = _buildFallbackAvatar(context);
    } else {
      // TODO(Zied): change the icon
      image = Icon(HyphaIcons.image, size: imageRadius, color: context.textTheme.titleSmall?.color);
    }

    final view = withBorder
        ? DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: CircleAvatar(
                radius: imageRadius,
                backgroundColor: HyphaColors.transparent,
                child: image,
              ),
            ),
          )
        : CircleAvatar(
            radius: imageRadius + (hasImage ? 2 : 1),
            backgroundColor: HyphaColors.transparent,
            child: image,
          );

    return GestureDetector(
      onTap: onTap,
      child: view,
    );
  }

  Widget _buildFallbackAvatar(BuildContext context) {
    return Container(
      width: imageRadius * 2,
      height: imageRadius * 2,
      decoration: const BoxDecoration(gradient: HyphaColors.gradientBlu, shape: BoxShape.circle),
      child: Center(
        child: Text(
          name!.characters.first.toUpperCase(),
          style: context.hyphaTextTheme.regular.copyWith(
            color: HyphaColors.white,
            fontSize: imageRadius,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
