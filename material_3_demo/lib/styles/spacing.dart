/// `Spacing` class defines a set of constants that can be used to maintain
/// consistent spacing, following an 8px grid system, throughout the application.
///
/// The spacing scale is based on the 8px grid. Fall back to the 4px minor grid if the spacing scale is not sufficient.
///
///
/// - `sp0` = 0.0px (No spacing)
/// - `sp1` = 4.0px
/// - `sp2` = 8.0px
/// - `sp3` = 16.0px
/// - `sp4` = 32.0px
/// - `sp5` = 64.0px
/// - `sp6` = 128.0px
/// - `sp7` = 256.0px
/// - `sp8` = 512.0px
///
class Spacing {
  static const base = 4;
  static const sp0 = 0.0 * base;
  static const sp1 = 1.0 * base;
  static const sp2 = 2.0 * base;
  static const sp3 = 4.0 * base;
  static const sp4 = 8.0 * base;
  static const sp5 = 16.0 * base;
  static const sp6 = 32.0 * base;
  static const sp7 = 64.0 * base;
  static const sp8 = 128.0 * base;
}
