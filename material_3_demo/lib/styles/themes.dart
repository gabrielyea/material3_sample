import 'package:flutter/material.dart';
import 'package:material_3_demo/styles/typography.dart';

extension CustomTextTheme on TextTheme {}

const agPlannerColorScheme = ColorScheme(
  primary: Color(0xFF2A80E9),
  onPrimary: Colors.white,
  secondary: Color.fromRGBO(26, 172, 70, 1),
  onSecondary: Colors.white,
  tertiary: Color.fromARGB(255, 253, 187, 46),
  onTertiary: Color.fromARGB(255, 17, 17, 17),
  inversePrimary: Colors.white,
  // surface: Color.fromARGB(255, 31, 31, 31),
  surface: Colors.white,
  // surface: Colors.white,
  onSurface: Colors.black,
  // background: Color.fromARGB(255, 17, 17, 17),
  background: Colors.white,
  // background: Colors.white,
  onBackground: Colors.black,
  error: Color.fromARGB(255, 230, 25, 25),
  // inverseSurface: Colors.white,
  // inversePrimary: Colors.white,
  surfaceTint: Colors.blue,
  // surfaceTint: Colors.black, // surfaces tint sets the color of different surfaces, if not defined, it will use the primary color as base
  onError: Colors.white,
  brightness: Brightness.light,
);

const agDashboardColorScheme = ColorScheme(
  primary: Color(0xFF2A80E9),
  onPrimary: Colors.white,
  secondary: Color.fromRGBO(26, 172, 70, 1),
  onSecondary: Colors.white,
  tertiary: Color.fromARGB(255, 253, 187, 46),
  onTertiary: Color.fromARGB(255, 17, 17, 17),
  surface: Color.fromARGB(255, 31, 31, 31),
  // surface: Colors.white,
  onSurface: Colors.white,
  background: Color.fromARGB(255, 17, 17, 17),
  // background: Colors.white,
  onBackground: Colors.white,
  error: Color.fromARGB(255, 230, 25, 25),
  // inverseSurface: Colors.white,
  // inversePrimary: Colors.white,
  // surfaceTint: Colors.green,
  surfaceTint: Colors
      .white, // surfaces tint sets the color of different surfaces, if not defined, it will use the primary color as base
  onError: Colors.white,
  brightness: Brightness.light,
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
      ));
}

final dbAgTheme = buildThemeData(agDashboardColorScheme, autonomyTextTheme);
final plAgTheme = buildThemeData(agPlannerColorScheme, autonomyTextTheme);
