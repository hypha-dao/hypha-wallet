import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class HyphaTextTheme extends ThemeExtension<HyphaTextTheme> {
  final TextStyle bigTitles;
  final TextStyle mediumTitles;
  final TextStyle smallTitles;
  final TextStyle reducedTitles;
  final TextStyle ralMediumBody;
  final TextStyle ralMediumLabel;
  final TextStyle ralInput;
  final TextStyle ralMediumSmallNote;
  final TextStyle buttons;
  final TextStyle regular;

  const HyphaTextTheme({
    required this.bigTitles,
    required this.mediumTitles,
    required this.smallTitles,
    required this.reducedTitles,
    required this.ralMediumBody,
    required this.ralMediumLabel,
    required this.ralInput,
    required this.ralMediumSmallNote,
    required this.buttons,
    required this.regular,
  });

  @override
  HyphaTextTheme copyWith({
    TextStyle? bigTitles,
    TextStyle? mediumTitles,
    TextStyle? smallTitles,
    TextStyle? reducedTitles,
    TextStyle? ralMediumBody,
    TextStyle? ralMediumLabel,
    TextStyle? ralInput,
    TextStyle? ralMediumSmallNote,
    TextStyle? buttons,
    TextStyle? regular,
  }) {
    return HyphaTextTheme(
      bigTitles: bigTitles ?? this.bigTitles,
      mediumTitles: mediumTitles ?? this.mediumTitles,
      smallTitles: smallTitles ?? this.smallTitles,
      reducedTitles: reducedTitles ?? this.reducedTitles,
      ralMediumBody: ralMediumBody ?? this.ralMediumBody,
      ralMediumLabel: ralMediumLabel ?? this.ralMediumLabel,
      ralInput: ralInput ?? this.ralInput,
      ralMediumSmallNote: ralMediumSmallNote ?? this.ralMediumSmallNote,
      buttons: buttons ?? this.buttons,
      regular: regular ?? this.regular,
    );
  }

  @override
  HyphaTextTheme lerp(ThemeExtension<HyphaTextTheme>? other, double t) {
    if (other is! HyphaTextTheme) {
      return this;
    }
    return HyphaTextTheme(
      bigTitles: TextStyle.lerp(bigTitles, other.bigTitles, t)!,
      mediumTitles: TextStyle.lerp(mediumTitles, other.mediumTitles, t)!,
      smallTitles: TextStyle.lerp(smallTitles, other.smallTitles, t)!,
      reducedTitles: TextStyle.lerp(reducedTitles, other.reducedTitles, t)!,
      ralMediumBody: TextStyle.lerp(ralMediumBody, other.ralMediumBody, t)!,
      ralMediumLabel: TextStyle.lerp(ralMediumLabel, other.ralMediumLabel, t)!,
      ralInput: TextStyle.lerp(ralInput, other.ralInput, t)!,
      ralMediumSmallNote: TextStyle.lerp(ralMediumSmallNote, other.ralMediumSmallNote, t)!,
      buttons: TextStyle.lerp(buttons, other.buttons, t)!,
      regular: TextStyle.lerp(regular, other.regular, t)!,
    );
  }

  @override
  String toString() => 'AppCustomTexts';

  // the light theme
  static final light = HyphaTextTheme(
    bigTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 24, height: 1.25),
    mediumTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 20, height: 1.4),
    smallTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 16, height: 1.3),
    reducedTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 14, height: 1.4),
    ralMediumBody: baseFontRal.copyWith(fontWeight: FontWeight.w500, fontSize: 14, height: 1.8),
    ralMediumLabel: baseFontRal.copyWith(fontWeight: FontWeight.w500, fontSize: 11, height: 1),
    ralInput: baseFontRal.copyWith(fontWeight: FontWeight.w500, fontSize: 16, height: 2),
    ralMediumSmallNote: baseFontRal.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.6,
      fontStyle: FontStyle.italic,
    ),
    buttons: baseFontPop.copyWith(fontWeight: FontWeight.bold, fontSize: 14, height: 1.5, letterSpacing: 1.5),
    regular: baseFontPop.copyWith(fontWeight: FontWeight.w500, fontSize: 16, height: 1.37),
  );

  static final baseFontPop = GoogleFonts.poppins();
  static final baseFontRal = GoogleFonts.raleway(fontFeatures: [const FontFeature.liningFigures()]);

  // the dark theme
  static final dark = HyphaTextTheme(
    bigTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 24, height: 1.25),
    mediumTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 20, height: 1.4),
    smallTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 16, height: 1.3),
    reducedTitles: baseFontPop.copyWith(fontWeight: FontWeight.w600, fontSize: 14, height: 1.4),
    ralMediumBody: baseFontRal.copyWith(fontWeight: FontWeight.w500, fontSize: 14, height: 1.8),
    ralMediumLabel: baseFontRal.copyWith(fontWeight: FontWeight.w500, fontSize: 11, height: 1),
    ralInput: baseFontRal.copyWith(fontWeight: FontWeight.w500, fontSize: 16, height: 2),
    ralMediumSmallNote: baseFontRal.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.6,
      fontStyle: FontStyle.italic,
    ),
    buttons: baseFontPop.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      height: 1.5,
      letterSpacing: 1.5,
    ),
    regular: baseFontPop.copyWith(fontWeight: FontWeight.w500, fontSize: 16, height: 1.37),
  );
}
