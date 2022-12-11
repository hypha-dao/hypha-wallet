import 'package:flutter/material.dart';

/// The Mobile Grid consists of 8 columns with a 16px gutter in between each column.
///
/// Margins on the left and right of the screen are 16px each.
///
/// This is applicable to both mobile apps and mobile web
class HyphaGrid {
  static const double top = 16;
  static const double bottom = 16;
  static const double left = 16;
  static const double right = 16;

  static const EdgeInsets sideMargins = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets allMargins = EdgeInsets.all(16);
}
