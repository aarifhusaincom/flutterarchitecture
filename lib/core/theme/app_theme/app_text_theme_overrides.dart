import 'package:flutter/material.dart';

/// This file contains only the overrides for specific TextStyles.
///
/// Example usage inside createTextTheme():
/// final custom = textThemeOverrides(displayTextTheme, bodyTextTheme);

TextTheme textThemeOverrides(
  TextTheme displayTextTheme,
  TextTheme bodyTextTheme,
) {
  return TextTheme(
    // display styles
    displayLarge: displayTextTheme.displayLarge,
    displayMedium: displayTextTheme.displayMedium,
    displaySmall: displayTextTheme.displaySmall,

    headlineLarge: displayTextTheme.headlineLarge,
    headlineMedium: displayTextTheme.headlineMedium,
    headlineSmall: displayTextTheme.headlineSmall,

    titleLarge: displayTextTheme.titleLarge,
    titleMedium: displayTextTheme.titleMedium,

    /// 🔥 override: titleSmall → 15
    titleSmall: displayTextTheme.titleSmall?.copyWith(fontSize: 15),

    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,

    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,

    /// 🔥 override: labelSmall → 13
    labelSmall: bodyTextTheme.labelSmall?.copyWith(fontSize: 13),
  );
}
