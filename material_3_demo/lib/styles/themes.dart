import 'package:flutter/material.dart';
import 'package:material_3_demo/agtonomy_components/dashboard_buttons.dart';
import 'package:material_3_demo/styles/typography.dart';

extension CustomTextTheme on TextTheme {}

Color agBlack =  Color.fromARGB(255, 17, 17, 17);

MaterialColor agBlue = MaterialColor(
  0xFF2A80E9,
  {
    50: Color(0xFFD3E4F9),
    100: Color(0xFFA4C9F1),
    200: Color(0xFF74ABE9),
    300: Color(0xFF4C95E9),
    400: Color(0xFF2A80E9),
    500: Color(0xFF1862A2),
    600: Color(0xFF104162),
    700: Color(0xFF082D42),
    800: Color(0xFF041B2A),
    900: Color(0xFF010A15),
  },
);

MaterialColor agGreen = MaterialColor(
  0xFF1AAC46,
  {
      50: Color(0xFFE9F7EB),
      100: Color(0xFFC8EFD4),
      200: Color(0xFFA4E4BE),
      300: Color(0xFF7ED9A8),
      400: Color(0xFF1AAC46),
      500: Color(0xFF128B33),
      600: Color(0xFF0D6C26),
      700: Color(0xFF084B1A),
      800: Color(0xFF042C0F),
      900: Color(0xFF010D05),
  },
);

final agPlannerColorScheme = ColorScheme(
  primary: agBlue.shade500,
  onPrimary: Colors.white,
  secondary: Color.fromRGBO(26, 172, 70, 1),
  onSecondary: Colors.white,
  tertiary: Color.fromARGB(255, 253, 187, 46),
  onTertiary: Color.fromARGB(255, 17, 17, 17),
  inversePrimary: Colors.white,
  surface: Colors.white,
  onSurface: Colors.black,
  background: Colors.white,
  onBackground: Colors.black,
  error: Color.fromARGB(255, 230, 25, 25),
  surfaceTint: Colors.blue,
  onError: Colors.white,
  brightness: Brightness.light,
);

const agDashboardColorScheme = ColorScheme(
  primary: Color.fromARGB(255, 42, 128, 233),
  onPrimary: Colors.white,
  secondary: Color.fromRGBO(26, 172, 70, 1),
  onSecondary: Colors.white,
  tertiary: Color.fromARGB(255, 253, 187, 46),
  onTertiary: Color.fromARGB(255, 17, 17, 17),
  surface: Color.fromARGB(255, 31, 31, 31), // for all widgets with elevation
  onSurface: Colors.white,
  background: Color.fromARGB(255, 17, 17, 17),
  onBackground: Colors.white,
  error: Color.fromARGB(255, 230, 25, 25),
  surfaceTint: Colors
      .white, // surfaces tint sets the color of different surfaces, if not defined, it will use the primary color as base
  onError: Colors.white,
  brightness: Brightness.light,
);

final dashboardScheme = buildColorScheme(
    seedColor: Color(0xFF2A80E9),
    secondarySeedColor: Color.fromRGBO(26, 172, 70, 1),
    tertiarySeedColor: Color.fromARGB(255, 253, 187, 46),
    errorColor: Color.fromARGB(255, 230, 25, 25),
    background: Colors.black,
    onBackground: Colors.white,
    surface: agBlack,
    onSurface: Colors.white,
    );

final plannerScheme = buildColorScheme(
    seedColor: Color(0xFF2A80E9),
    secondarySeedColor: Color.fromRGBO(26, 172, 70, 1),
    tertiarySeedColor: Color.fromARGB(255, 253, 187, 46),
    errorColor: Color.fromARGB(255, 230, 25, 25),
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: agBlack,
    onInverseSurface: Colors.white,
    );

final anotherScheme = buildColorScheme(
    seedColor: Color.fromARGB(255, 77, 42, 233),
    secondarySeedColor: Color.fromRGBO(207, 182, 21, 1),
    tertiarySeedColor: Color.fromARGB(255, 253, 46, 232),
    errorColor: Color.fromARGB(255, 230, 25, 25),
    background: Colors.black,
    onBackground: Colors.pink,
    surface: Color.fromARGB(255, 54, 62, 54),
    onSurface: Colors.pink,
    );

final autonomyTextTheme = TextTheme(
  displayLarge: AgtonomyTypography.displayLarge,
  displayMedium: AgtonomyTypography.displayMedium,
  displaySmall: AgtonomyTypography.displaySmall,
  headlineLarge: AgtonomyTypography.headingLarge,
  headlineMedium: AgtonomyTypography.headingMedium,
  headlineSmall: AgtonomyTypography.headingSmall,
  titleLarge: AgtonomyTypography.titleLarge,
  titleMedium: AgtonomyTypography.titleMedium,
  titleSmall: AgtonomyTypography.titleSmall,
  labelLarge: AgtonomyTypography.labelLarge,
  labelMedium: AgtonomyTypography.labelMedium,
  labelSmall: AgtonomyTypography.labelSmall,
  bodyLarge: AgtonomyTypography.bodyLarge,
  bodyMedium: AgtonomyTypography.bodyMedium,
  bodySmall: AgtonomyTypography.bodySmall,
);

ThemeData buildThemeData(ColorScheme colorScheme, TextTheme textTheme) {
  return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: colorScheme,
      textTheme: textTheme,
      useMaterial3: true,
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: colorScheme.background,
        selectedIconTheme: IconThemeData(color: colorScheme.primary, size: 56),
        unselectedIconTheme: IconThemeData(color: colorScheme.onSurface, size: 56),
        selectedLabelTextStyle: TextStyle(color: colorScheme.primary, fontSize: 16),
        unselectedLabelTextStyle: TextStyle(color: colorScheme.onSurface, fontSize: 16),
        indicatorColor: Colors.transparent,
      ),
    );
}

final dbAgTheme = buildThemeData(dashboardScheme, autonomyTextTheme);
final plAgTheme = buildThemeData(plannerScheme, autonomyTextTheme);

ColorScheme buildColorScheme({
  required Color seedColor,
  required Color secondarySeedColor,
  required Color tertiarySeedColor,
  required Color errorColor,
  required Color surface,
  required Color onSurface,
  required Color background,
  required Color onBackground,
  Color? surfaceTint,
  Color? surfaceVariant,
  Color? outline,
  Color? inverseSurface,
  Color? inversePrimary,
  Color? onInverseSurface,
  Color? outlineVariant,
  Color? onSurfaceVariant,
  Brightness brightness = Brightness.light,
}) {
  final primaryScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: brightness,
  );

  final secondaryScheme = ColorScheme.fromSeed(
    seedColor: secondarySeedColor,
    brightness: brightness,
  );

  final tertiaryScheme = ColorScheme.fromSeed(
    seedColor: tertiarySeedColor,
    brightness: brightness,
  );

  final errorScheme = ColorScheme.fromSeed(
    seedColor: errorColor,
    brightness: brightness,
  );

  return primaryScheme.copyWith(
    primary: seedColor,
    secondary: secondarySeedColor,
    onSecondary: secondaryScheme.onPrimary,
    secondaryContainer: secondaryScheme.primaryContainer,
    onSecondaryContainer: secondaryScheme.onPrimaryContainer,
    tertiary: tertiarySeedColor,
    onTertiary: tertiaryScheme.onPrimary,
    tertiaryContainer: tertiaryScheme.primaryContainer,
    onTertiaryContainer: tertiaryScheme.onPrimaryContainer,
    error: errorColor,
    onError: errorScheme.onPrimary,
    errorContainer: errorScheme.primaryContainer,
    onErrorContainer: errorScheme.onPrimaryContainer,
    surface: surface,
    onSurface: onSurface,
    background: background,
    onBackground: onBackground,
    surfaceTint: surfaceTint ?? seedColor,
    surfaceVariant: surfaceVariant ?? primaryScheme.surfaceVariant,
    outline: outline ?? primaryScheme.outline,
    inverseSurface: inverseSurface ?? primaryScheme.inverseSurface,
    inversePrimary: inversePrimary ?? primaryScheme.inversePrimary,
    onInverseSurface: onInverseSurface ?? primaryScheme.onInverseSurface,
    outlineVariant: outlineVariant ?? primaryScheme.outlineVariant,
    onSurfaceVariant: onSurfaceVariant ?? primaryScheme.onSurfaceVariant,
  );
}
