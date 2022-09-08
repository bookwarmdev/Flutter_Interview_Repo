import 'package:flutter/material.dart';

// https://material-foundation.github.io/material-theme-builder/#/custom

class AppColor {
  static const seed = Color(0xFF6750A4);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF1648CE),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFDBE1FF),
    onPrimaryContainer: Color(0xFF001354),
    secondary: Color(0xFF4D57A9),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFDEE0FF),
    onSecondaryContainer: Color(0xFF000965),
    tertiary: Color(0xFF994061),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFD8E3),
    onTertiaryContainer: Color(0xFF3E001C),
    error: Color(0xFFB3261E),
    errorContainer: Color(0xFFF9DEDC),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410E0B),
    background: Color(0xFFFFFBFE),
    onBackground: Color(0xFF1C1B1F),
    surface: Color(0xFFFFFBFE),
    onSurface: Color(0xFF1C1B1F),
    surfaceVariant: Color(0xFFE7E0EC),
    onSurfaceVariant: Color(0xFF49454F),
    outline: Color(0xFF79747E),
    onInverseSurface: Color(0xFFF4EFF4),
    inverseSurface: Color(0xFF313033),
    inversePrimary: Color(0xFFB5C4FF),
    shadow: Color(0xFF000000),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFB5C4FF),
    onPrimary: Color(0xFF002485),
    primaryContainer: Color(0xFF0037BA),
    onPrimaryContainer: Color(0xFFDBE1FF),
    secondary: Color(0xFFBBC2FF),
    onSecondary: Color(0xFF1C2678),
    secondaryContainer: Color(0xFF353E90),
    onSecondaryContainer: Color(0xFFDEE0FF),
    tertiary: Color(0xFFFFB1CA),
    onTertiary: Color(0xFF5E1133),
    tertiaryContainer: Color(0xFF7B2849),
    onTertiaryContainer: Color(0xFFFFD8E3),
    error: Color(0xFFF2B8B5),
    errorContainer: Color(0xFF8C1D18),
    onError: Color(0xFF601410),
    onErrorContainer: Color(0xFFF9DEDC),
    background: Color(0xFF1C1B1F),
    onBackground: Color(0xFFE6E1E5),
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFFE6E1E5),
    surfaceVariant: Color(0xFF49454F),
    onSurfaceVariant: Color(0xFFCAC4D0),
    outline: Color(0xFF938F99),
    onInverseSurface: Color(0xFF1C1B1F),
    inverseSurface: Color(0xFFE6E1E5),
    inversePrimary: Color(0xFF2652D7),
    shadow: Color(0xFF000000),
  );
}
