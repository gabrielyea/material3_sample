import 'package:flutter/material.dart';
import 'package:material_3_demo/styles/agtonomy_colors.dart';
import 'package:material_3_demo/styles/typography.dart';

extension CustomTextTheme on TextTheme {}

final agPlannerColorScheme = ColorScheme(
  primary: AgtonomyColors.agBlue.shade400,
  onPrimary: AgtonomyColors.agWhite,
  secondary: AgtonomyColors.agGreen.shade400,
  onSecondary: AgtonomyColors.agWhite,
  tertiary: AgtonomyColors.agYellow.shade400,
  onTertiary: AgtonomyColors.agBlack,
  inversePrimary: AgtonomyColors.agWhite,
  surface: AgtonomyColors.agWhite,
  onSurface: AgtonomyColors.agBlack,
  background: AgtonomyColors.agWhite,
  onBackground: AgtonomyColors.agBlack,
  error: AgtonomyColors.agRed.shade400,
  surfaceTint:  AgtonomyColors.agBlue.shade400,
  onError: AgtonomyColors.agWhite,
  brightness: Brightness.light,
);

final agDashboardColorScheme = ColorScheme(
  primary: AgtonomyColors.agBlue.shade400,
  onPrimary: AgtonomyColors.agWhite,
  secondary: AgtonomyColors.agGreen.shade400,
  onSecondary: AgtonomyColors.agWhite,
  tertiary: AgtonomyColors.agYellow.shade400,
  onTertiary: AgtonomyColors.agBlack,
  surface: AgtonomyColors.agGrey.shade800,
  onSurface: AgtonomyColors.agWhite,
  background: AgtonomyColors.agBlack,
  onBackground: AgtonomyColors.agWhite,
  error: AgtonomyColors.agRed.shade400,
  surfaceTint: AgtonomyColors.agWhite,
  onError: AgtonomyColors.agWhite,
  brightness: Brightness.light,
);

final dashboardScheme = buildColorScheme(
    seedColor: AgtonomyColors.agBlue.shade400,
    secondarySeedColor: AgtonomyColors.agGreen.shade400,
    tertiarySeedColor: AgtonomyColors.agYellow.shade400,
    errorColor: AgtonomyColors.agRed.shade400,
    background: AgtonomyColors.agBlack,
    onBackground: AgtonomyColors.agWhite,
    surface: AgtonomyColors.agBlack ,
    onSurface: AgtonomyColors.agWhite,
    );

final plannerScheme = buildColorScheme(
    seedColor: AgtonomyColors.agBlue.shade400,
    secondarySeedColor: AgtonomyColors.agGreen.shade400,
    tertiarySeedColor: AgtonomyColors.agYellow.shade400,
    errorColor: AgtonomyColors.agRed.shade400,
    background: AgtonomyColors.agWhite,
    onBackground: AgtonomyColors.agBlack,
    surface: AgtonomyColors.agWhite,
    onSurface: AgtonomyColors.agBlack,
    onInverseSurface: AgtonomyColors.agWhite,
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
