import 'package:flutter/material.dart';

import 'app_color_scheme.dart';
import 'app_text_theme.dart';
import 'app_theme_data.dart';

class AppTheme {


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorScheme.lightScheme(),
    scaffoldBackgroundColor: AppColorScheme.lightScheme().surface,
    canvasColor: AppColorScheme.lightScheme().surface,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppThemeData.elevatedButtonTheme(colorScheme: AppColorScheme.lightScheme()),
    outlinedButtonTheme: AppThemeData.outlinedButtonTheme(colorScheme: AppColorScheme.lightScheme()),
    textButtonTheme: AppThemeData.textButtonTheme(colorScheme: AppColorScheme.lightScheme()),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: AppColorScheme.darkScheme(),
    scaffoldBackgroundColor: AppColorScheme.darkScheme().surface,
    canvasColor: AppColorScheme.darkScheme().surface,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppThemeData.elevatedButtonTheme(colorScheme: AppColorScheme.darkScheme()),
    outlinedButtonTheme: AppThemeData.outlinedButtonTheme(colorScheme: AppColorScheme.darkScheme()),
    textButtonTheme: AppThemeData.textButtonTheme(colorScheme: AppColorScheme.darkScheme()),
  );

}
