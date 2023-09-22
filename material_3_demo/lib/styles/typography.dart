import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AgtonomyTypography {
  // Large display with 96px font size and 104px line height
  static const double _displayLargeFontSize = 96;
  static const double _displayLargeLineHeight = 104;


  static TextStyle displayLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w800,
    fontSize: _displayLargeFontSize,
    height: _displayLargeLineHeight / _displayLargeFontSize,
  );


  // Medium display with 72px font size and 80px line height
  static const double _displayMeidumFontSize = 72;
  static const double _displayMediumLineHeight = 80;

  static TextStyle displayMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w800,
    fontSize: _displayMeidumFontSize,
    height: _displayMediumLineHeight / _displayMeidumFontSize,
  );

  // Small display with 48px font size and 56px line height
  static const double _displaySmallFontSize = 48;
  static const double _displaySmallLineHeight = 56;

  static TextStyle displaySmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w800,
    fontSize: _displaySmallFontSize,
    height: _displaySmallLineHeight / _displaySmallFontSize,
  );

  // Large headlline with 32px font size and 40px line height
  static const double _headingLargeFontSize = 32;
  static const double _headingLargeLineHeight = 40;

  static TextStyle headingLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: _headingLargeFontSize,
    height: _headingLargeLineHeight / _headingLargeFontSize,
  );

  // Medium headline with 24px font size and 24px line height
  static const double _headingMediumFontSize = 24;
  static const double _headingMediumLineHeight = 24;

  static TextStyle headingMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: _headingMediumFontSize,
    height: _headingMediumLineHeight / _headingMediumFontSize,
  );

  // Small headline with 20px font size and 24px line height
  static const double _headingSmallFontSize = 20;
  static const double _headingSmallLineHeight = 24;

  static TextStyle headingSmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: _headingSmallFontSize,
    height: _headingSmallLineHeight / _headingSmallFontSize,
  );

  // Large title with 20px font size and 24px line height
  static const double _titleLargeFontSize = 20;
  static const double _titleLargeLineHeight = 24;

  static TextStyle titleLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: _titleLargeFontSize,
    height: _titleLargeLineHeight / _titleLargeFontSize,
  );

  // Medium title with 16px font size and 20px line height
  static const double _titleMediumFontSize = 16;
  static const double _titleMediumLineHeight = 20;

  static TextStyle titleMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: _titleMediumFontSize,
    height: _titleMediumLineHeight / _titleMediumFontSize,
  );

  // Small title with 14px font size and 16px line height
  static const double _titleSmallFontSize = 14;
  static const double _titleSmallLineHeight = 16;

  static TextStyle titleSmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: _titleSmallFontSize,
    height: _titleSmallLineHeight / _titleSmallFontSize,
  );


  // Large body with 20px font size and 24px line height
  static const double _bodyLargeFontSize = 20;
  static const double _bodyLargeLineHeight = 24;

  static TextStyle bodyLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: _bodyLargeFontSize,
    height: _bodyLargeLineHeight / _bodyLargeFontSize,
  );

  // Medium body with 16px font size and 20px line height
  static const double _bodyMediumFontSize = 16;
  static const double _bodyMediumLineHeight = 20;

  static TextStyle bodyMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: _bodyMediumFontSize,
    height: _bodyMediumLineHeight / _bodyMediumFontSize,
  );

  // Small body with 14px font size and 16px line height
  static const double _bodySmallFontSize = 14;
  static const double _bodySmallLineHeight = 16;

  static TextStyle bodySmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: _bodySmallFontSize,
    height: _bodySmallLineHeight / _bodySmallFontSize,
  );

  // Large label with 20px font size and 24px line height
  static const double _labelLargeFontSize = 20;
  static const double _labelLargeLineHeight = 24;

  static TextStyle labelLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: _labelLargeFontSize,
    height: _labelLargeLineHeight / _labelLargeFontSize,
  );

  // Medium label with 16px font size and 20px line height
  static const double _labelMediumFontSize = 16;
  static const double _labelMediumLineHeight = 20;

  static TextStyle labelMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: _labelMediumFontSize,
    height: _labelMediumLineHeight / _labelMediumFontSize,
  );

  // Small label with 14px font size and 16px line height
  static const double _labelSmallFontSize = 14;
  static const double _labelSmallLineHeight = 16;

  static TextStyle labelSmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: _labelSmallFontSize,
    height: _labelSmallLineHeight / _labelSmallFontSize,
  );
}
