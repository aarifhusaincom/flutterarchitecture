import 'package:flutter/material.dart';

import '../material-theme/create_text_theme.dart';

/// This file contains only the overrides for specific TextStyles.
///
/// Example usage inside createTextTheme():
/// final customTextTheme = textThemeOverrides(displayTextTheme, bodyTextTheme);

TextTheme textThemeOverrides({
  required TextTheme displayTextTheme,
  required TextTheme bodyTextTheme,
  required ColorSchemeType colorScheme,
}) {
  return TextTheme(
    /// display text
    displayLarge: displayTextTheme.displayLarge?.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black
          : Colors.white,
    ),
    displayMedium: displayTextTheme.displayMedium?.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black
          : Colors.white,
    ),
    displaySmall: displayTextTheme.displaySmall?.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black
          : Colors.white,
    ),

    /// headline text
    headlineLarge: displayTextTheme.headlineLarge?.copyWith(
      fontSize: 26,
      fontWeight: FontWeight.w600,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),
    headlineMedium: displayTextTheme.headlineMedium?.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),
    headlineSmall: displayTextTheme.headlineSmall?.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),

    /// title text
    titleLarge: bodyTextTheme.titleLarge?.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),
    titleMedium: bodyTextTheme.titleMedium?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),
    titleSmall: bodyTextTheme.titleSmall?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),

    /// body text
    bodyLarge: bodyTextTheme.bodyLarge?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),
    bodySmall: bodyTextTheme.bodySmall?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white70,
    ),

    /// body text
    labelLarge: bodyTextTheme.labelLarge?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white,
    ),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white,
    ),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? Colors.black87
          : Colors.white,
    ),
  );
}
