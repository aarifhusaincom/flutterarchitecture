import '../../library.dart';

/// We will call this method to create a TextTheme object.
/// Example 1: TextTheme textTheme = createTextTheme(context, "Roboto", "Poppins");
/// Example 2: TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
enum ColorSchemeType { lightTheme, darkTheme }

TextTheme createTextTheme({
  required BuildContext context,
  required String bodyFontString,
  required String displayFontString,
  colorScheme = ColorSchemeType.lightTheme,
}) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;

  /// getTextTheme is a method from google_fonts package where you can pass two positional arguments bodyFontString and baseTextTheme
  /// to create a new TextTheme.

  TextTheme bodyTextTheme = GoogleFonts.getTextTheme(
    bodyFontString,
    baseTextTheme,
  );
  TextTheme displayTextTheme = GoogleFonts.getTextTheme(
    displayFontString,
    baseTextTheme,
  );
  if (context.read<TextThemeProvider>().isCustomTextTheme) {
    //if (false) {
    /// override apply from separate file
    final customTextTheme = textThemeOverrides(
      displayTextTheme: displayTextTheme,
      bodyTextTheme: bodyTextTheme,
      colorScheme: colorScheme,
    );
    return customTextTheme;
  } else {
    /// we can override separate in this file like commented code

    /// Now we have 2 textTheme of different fonts. but we can return only one text theme with mix of fonts.
    /// so modify of one text theme with another text theme.
    /// (currently I am modifying the displayTextTheme)

    TextTheme textTheme = displayTextTheme.copyWith(
      /// set from displayTextTheme
      displayLarge: displayTextTheme.displayLarge?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      displayMedium: displayTextTheme.displayMedium?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      displaySmall: displayTextTheme.displaySmall?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      headlineLarge: displayTextTheme.headlineLarge?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      headlineMedium: displayTextTheme.headlineMedium?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      headlineSmall: displayTextTheme.headlineSmall?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),

      /// set from bodyTextTheme
      titleLarge: displayTextTheme.titleLarge?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      titleMedium: displayTextTheme.titleMedium?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      titleSmall: displayTextTheme.titleSmall?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      bodyLarge: bodyTextTheme.bodyLarge?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      bodyMedium: bodyTextTheme.bodyMedium?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      bodySmall: bodyTextTheme.bodySmall?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurfaceVariant
            : AppMaterialDarkColors.onSurfaceVariant,
      ),
      labelLarge: bodyTextTheme.labelLarge?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      labelMedium: bodyTextTheme.labelMedium?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
      labelSmall: bodyTextTheme.labelSmall?.copyWith(
        color: colorScheme == ColorSchemeType.lightTheme
            ? AppMaterialLightColors.onSurface
            : AppMaterialDarkColors.onSurface,
      ),
    );

    return textTheme;
  }
}
