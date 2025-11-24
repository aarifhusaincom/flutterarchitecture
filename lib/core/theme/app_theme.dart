import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../viewmodels/app/text_theme_provider.dart';
import 'app_color_scheme.dart';
import 'app_theme_data_overrides.dart';
import 'create_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final textProvider = Provider.of<TextThemeProvider>(context);
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorScheme.lightScheme(),
      scaffoldBackgroundColor: AppColorScheme.lightScheme().surface,
      canvasColor: AppColorScheme.lightScheme().surface,
      textTheme: createTextTheme(
        context: context,
        displayFontString: textProvider.displayFont,
        bodyFontString: textProvider.bodyFont,
        colorScheme: ColorSchemeType.lightTheme,
      ),
      // textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppThemeDataOverrides.elevatedButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
      ),
      outlinedButtonTheme: AppThemeDataOverrides.outlinedButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
      ),
      textButtonTheme: AppThemeDataOverrides.textButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final textProvider = Provider.of<TextThemeProvider>(context);
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: AppColorScheme.darkScheme(),
      scaffoldBackgroundColor: AppColorScheme.darkScheme().surface,
      canvasColor: AppColorScheme.darkScheme().surface,
      textTheme: createTextTheme(
        context: context,
        displayFontString: textProvider.displayFont,
        bodyFontString: textProvider.bodyFont,
        colorScheme: ColorSchemeType.darkTheme,
      ),
      // textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppThemeDataOverrides.elevatedButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
      ),
      outlinedButtonTheme: AppThemeDataOverrides.outlinedButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
      ),
      textButtonTheme: AppThemeDataOverrides.textButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
      ),
    );
  }
}
