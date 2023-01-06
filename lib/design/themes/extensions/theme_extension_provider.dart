import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/themes/extensions/hypha_assets_theme.dart';
import 'package:hypha_wallet/design/themes/extensions/hypha_text_theme.dart';

extension ThemeExtensions on BuildContext {
  HyphaAssetsTheme get hyphaAssetTheme => Theme.of(this).extension<HyphaAssetsTheme>()!;
  HyphaTextTheme get hyphaTextTheme => Theme.of(this).extension<HyphaTextTheme>()!;

  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
}
