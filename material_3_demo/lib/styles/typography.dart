import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AgtonomyTypography {
  static const double _displayLargeFontSize = 48;

  static const double _displayLargeLineHeight = 64;

  static TextStyle displayLarge = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: _displayLargeFontSize,
    height: _displayLargeLineHeight / _displayLargeFontSize,
  );

  static const double _displaySmallFontSize = 36;

  static const double _displaySmallLineHeight = 48;

  static TextStyle displaySmall = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: _displaySmallFontSize,
    height: _displaySmallLineHeight / _displaySmallFontSize,
  );

  static const double _headingLargeFontSize = 36;

  static const double _headingLargeLineHeight = 48;

  static TextStyle headingLarge = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: _headingLargeFontSize,
    height: _headingLargeLineHeight / _headingLargeFontSize,
  );

  static const double _headingMediumFontSize = 32;

  static const double _headingMediumLineHeight = 48;

  static TextStyle headingMedium = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: _headingMediumFontSize,
    height: _headingMediumLineHeight / _headingMediumFontSize,
  );

  static const double _headingSmallFontSize = 32;

  static const double _headingSmallLineHeight = 40;

  static TextStyle headingSmall = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: _headingSmallFontSize,
    height: _headingSmallLineHeight / _headingSmallFontSize,
  );

  static const double _titleLargeFontSize = 24;

  static const double _titleLineHeight = 32;

  static TextStyle titleLargeRegular = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: _titleLargeFontSize,
    height: _titleLineHeight / _titleLargeFontSize,
  );

  static TextStyle titleLargeBold = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: _titleLargeFontSize,
    height: _titleLineHeight / _titleLargeFontSize,
  );

  static const double _titleSmallFontSize = 20;

  static TextStyle titleSmallRegular = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: _titleSmallFontSize,
    height: _titleLineHeight / _titleSmallFontSize,
  );

  static TextStyle titleSmallBold = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: _titleSmallFontSize,
    height: _titleLineHeight / _titleSmallFontSize,
  );

  static const double _bodyLargeFontSize = 18;

  static const double _bodyLineHeight = 24;

  static TextStyle bodyLargeRegular = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: _bodyLargeFontSize,
    height: _bodyLineHeight / _bodyLargeFontSize,
  );

  static TextStyle bodyLargeBold = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: _bodyLargeFontSize,
    height: _bodyLineHeight / _bodyLargeFontSize,
  );

  static const double _bodySmallFontSize = 16;

  static TextStyle bodySmallRegular = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: _bodySmallFontSize,
    height: _bodyLineHeight / _bodySmallFontSize,
  );

  static TextStyle bodySmallBold = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: _bodySmallFontSize,
    height: _bodyLineHeight / _bodySmallFontSize,
  );

  static const double _labelLargeFontSize = 14;

  static const double _labelLineHeight = 16;

  static TextStyle labelLargeRegular = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: _labelLargeFontSize,
    height: _labelLineHeight / _labelLargeFontSize,
  );

  static TextStyle labelLargeBold = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: _labelLargeFontSize,
    height: _labelLineHeight / _labelLargeFontSize,
  );

  static const double _labelSmallFontSize = 12;

  static TextStyle labelSmallRegular = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: _labelSmallFontSize,
    height: _labelLineHeight / _labelSmallFontSize,
  );

  static TextStyle labelSmallBold = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: _labelSmallFontSize,
    height: _labelLineHeight / _labelSmallFontSize,
  );
}
