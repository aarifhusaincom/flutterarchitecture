import '../../library.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final textProvider = Provider.of<TextThemeProvider>(context);
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorScheme.lightScheme(),

      /// scaffoldBackgroundColor color default will be surface. we can change if we want.
      scaffoldBackgroundColor: AppColorScheme.lightScheme().surface,
      canvasColor: AppColorScheme.lightScheme().surface,
      // textTheme: AppTextTheme.lightTextTheme,
      textTheme: createTextTheme(
        context: context,
        displayFontString: textProvider.displayFont,
        bodyFontString: textProvider.bodyFont,
        colorScheme: ColorSchemeType.lightTheme,
      ),
      elevatedButtonTheme: AppThemeDataOverrides.elevatedButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
        textTheme: createTextTheme(
          context: context,
          displayFontString: textProvider.displayFont,
          bodyFontString: textProvider.bodyFont,
          colorScheme: ColorSchemeType.lightTheme,
        ),
      ),
      outlinedButtonTheme: AppThemeDataOverrides.outlinedButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
        textTheme: createTextTheme(
          context: context,
          displayFontString: textProvider.displayFont,
          bodyFontString: textProvider.bodyFont,
          colorScheme: ColorSchemeType.lightTheme,
        ),
      ),
      textButtonTheme: AppThemeDataOverrides.textButtonTheme(
        colorScheme: AppColorScheme.lightScheme(),
        textTheme: createTextTheme(
          context: context,
          displayFontString: textProvider.displayFont,
          bodyFontString: textProvider.bodyFont,
          colorScheme: ColorSchemeType.lightTheme,
        ),
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
      // textTheme: AppTextTheme.darkTextTheme,
      textTheme: createTextTheme(
        context: context,
        displayFontString: textProvider.displayFont,
        bodyFontString: textProvider.bodyFont,
        colorScheme: ColorSchemeType.darkTheme,
      ),
      elevatedButtonTheme: AppThemeDataOverrides.elevatedButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
        textTheme: createTextTheme(
          context: context,
          displayFontString: textProvider.displayFont,
          bodyFontString: textProvider.bodyFont,
          colorScheme: ColorSchemeType.lightTheme,
        ),
      ),
      outlinedButtonTheme: AppThemeDataOverrides.outlinedButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
        textTheme: createTextTheme(
          context: context,
          displayFontString: textProvider.displayFont,
          bodyFontString: textProvider.bodyFont,
          colorScheme: ColorSchemeType.lightTheme,
        ),
      ),
      textButtonTheme: AppThemeDataOverrides.textButtonTheme(
        colorScheme: AppColorScheme.darkScheme(),
        textTheme: createTextTheme(
          context: context,
          displayFontString: textProvider.displayFont,
          bodyFontString: textProvider.bodyFont,
          colorScheme: ColorSchemeType.lightTheme,
        ),
      ),
    );
  }
}
