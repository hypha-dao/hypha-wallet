import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/themes/extensions/hypha_assets_theme.dart';

extension ThemeExtensions on BuildContext {
  HyphaAssetsTheme get hyphaAssetTheme => Theme.of(this).extension<HyphaAssetsTheme>()!;

  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
}
