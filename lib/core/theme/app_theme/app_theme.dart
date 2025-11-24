import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../viewmodels/app/text_theme_provider.dart';
import '../material-theme/create_text_theme.dart';
import 'app_color_scheme.dart';
import 'app_theme_data.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final textProvider = Provider.of<TextThemeProvider>(context);
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorScheme.lightScheme(),
      scaffoldBackgroundColor: AppColorScheme.lightScheme().surface,
      canvasColor: AppColorScheme.lightScheme().surface,
      textTheme: createTextTheme(
        context,
        textProvider.bodyFont,
        textProvider.displayFont,
      ),
      // textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppThemeData.elevatedButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
      ),
      outlinedButtonTheme: AppThemeData.outlinedButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
      ),
      textButtonTheme: AppThemeData.textButtonTheme(
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
        context,
        textProvider.bodyFont,
        textProvider.displayFont,
      ),
      // textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppThemeData.elevatedButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
      ),
      outlinedButtonTheme: AppThemeData.outlinedButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
      ),
      textButtonTheme: AppThemeData.textButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
      ),
    );
  }
}
