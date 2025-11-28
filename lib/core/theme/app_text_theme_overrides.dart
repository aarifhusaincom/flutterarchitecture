import '../../library.dart';

// reference
/// FontWeight.w100 → Thin
/// FontWeight.w200 → Extra Light
/// FontWeight.w300 → Light
/// FontWeight.w400 → Normal / Regular
/// FontWeight.w500 → Medium
/// FontWeight.w600 → Semi-Bold
/// FontWeight.w700 → Bold
/// FontWeight.w800 → Extra Bold
/// FontWeight.w900 → Black

/// This file contains only the overrides for specific TextStyles.
///
/// Example usage inside createTextTheme():
/// final customTextTheme = textThemeOverrides(displayTextTheme, bodyTextTheme);

TextTheme textThemeOverrides({
  required TextTheme displayTextTheme,
  required TextTheme bodyTextTheme,
  required ColorSchemeType colorScheme,
}) {
  log("aarif - textThemeOverrides running $colorScheme");
  return TextTheme(
    /// display text
    displayLarge: displayTextTheme.displayLarge?.copyWith(
      fontSize: AppDefaultThemeTextSize.displayLarge,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    displayMedium: displayTextTheme.displayMedium?.copyWith(
      fontSize: AppDefaultThemeTextSize.displayMedium,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    displaySmall: displayTextTheme.displaySmall?.copyWith(
      fontSize: AppDefaultThemeTextSize.displaySmall,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),

    /// headline text
    headlineLarge: displayTextTheme.headlineLarge?.copyWith(
      fontSize: AppDefaultThemeTextSize.headlineLarge,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    headlineMedium: displayTextTheme.headlineMedium?.copyWith(
      fontSize: AppDefaultThemeTextSize.headlineMedium,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    headlineSmall: displayTextTheme.headlineSmall?.copyWith(
      fontSize: AppDefaultThemeTextSize.headlineSmall,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),

    /// title text
    titleLarge: bodyTextTheme.titleLarge?.copyWith(
      fontSize: AppDefaultThemeTextSize.titleLarge,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    titleMedium: bodyTextTheme.titleMedium?.copyWith(
      //fontSize: AppDefaultThemeTextSize.titleMedium,
      fontSize: 32,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.primary
          : AppMaterialDarkColors.primary,
    ),
    titleSmall: bodyTextTheme.titleSmall?.copyWith(
      fontSize: AppDefaultThemeTextSize.titleSmall,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),

    /// body text
    bodyLarge: bodyTextTheme.bodyLarge?.copyWith(
      fontSize: AppDefaultThemeTextSize.bodyLarge,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(
      fontSize: AppDefaultThemeTextSize.bodyMedium,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    bodySmall: bodyTextTheme.bodySmall?.copyWith(
      fontSize: AppDefaultThemeTextSize.bodySmall,
      fontWeight: FontWeight.normal,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurfaceVariant
          : AppMaterialDarkColors.onSurfaceVariant,
    ),

    /// label text
    labelLarge: bodyTextTheme.labelLarge?.copyWith(
      fontSize: AppDefaultThemeTextSize.labelLarge,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(
      fontSize: AppDefaultThemeTextSize.labelMedium,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(
      fontSize: AppDefaultThemeTextSize.labelSmall,
      fontWeight: FontWeight.w500,
      color: colorScheme == ColorSchemeType.lightTheme
          ? AppMaterialLightColors.onSurface
          : AppMaterialDarkColors.onSurface,
    ),
  );
}
