import '../../flutterarchitecture.dart';

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
  final isCustomTextTheme = Provider.of<TextThemeProvider>(
    context,
    listen: false,
  );

  /// getTextTheme is a method from google_fonts package where you can pass two positional arguments bodyFontString and baseTextTheme
  /// to create a new TextTheme .

  TextTheme bodyTextTheme = GoogleFonts.getTextTheme(
    bodyFontString,
    baseTextTheme,
  );
  TextTheme displayTextTheme = GoogleFonts.getTextTheme(
    displayFontString,
    baseTextTheme,
  );
  if (isCustomTextTheme.isCustomTextTheme) {
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
      displayLarge: displayTextTheme.displayLarge,
      displayMedium: displayTextTheme.displayMedium,
      displaySmall: displayTextTheme.displaySmall,
      headlineLarge: displayTextTheme.headlineLarge,
      headlineMedium: displayTextTheme.headlineMedium,
      headlineSmall: displayTextTheme.headlineSmall,

      /// set from bodyTextTheme
      titleLarge: displayTextTheme.titleLarge,
      titleMedium: displayTextTheme.titleMedium,
      titleSmall: displayTextTheme.titleSmall,
      bodyLarge: bodyTextTheme.bodyLarge,
      bodyMedium: bodyTextTheme.bodyMedium,
      bodySmall: bodyTextTheme.bodySmall,
      labelLarge: bodyTextTheme.labelLarge,
      labelMedium: bodyTextTheme.labelMedium,
      labelSmall: bodyTextTheme.labelSmall,
    );

    return textTheme;
  }
}
