import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme/app_text_theme_overrides.dart';

/// We will call this method to create a TextTheme object.
/// Example 1: TextTheme textTheme = createTextTheme(context, "Roboto", "Poppins");
/// Example 2: TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
TextTheme createTextTheme(
  BuildContext context,
  String bodyFontString,
  String displayFontString,
) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;

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
  //
  // /// Now we have 2 textTheme of different fonts. but we can return only one text theme with mix of fonts.
  // /// so modify of one text theme with another text theme.
  // /// (currently I am modifying the displayTextTheme)
  //
  // TextTheme textTheme = displayTextTheme.copyWith(
  //   /// set from displayTextTheme
  //   displayLarge: displayTextTheme.displayLarge,
  //   displayMedium: displayTextTheme.displayMedium,
  //   displaySmall: displayTextTheme.displaySmall,
  //   headlineLarge: displayTextTheme.headlineLarge,
  //   headlineMedium: displayTextTheme.headlineMedium,
  //   headlineSmall: displayTextTheme.headlineSmall,
  //
  //   /// set from bodyTextTheme
  //   titleLarge: displayTextTheme.titleLarge,
  //   titleMedium: displayTextTheme.titleMedium,
  //   titleSmall: displayTextTheme.titleSmall,
  //   bodyLarge: bodyTextTheme.bodyLarge,
  //   bodyMedium: bodyTextTheme.bodyMedium,
  //   bodySmall: bodyTextTheme.bodySmall,
  //   labelLarge: bodyTextTheme.labelLarge,
  //   labelMedium: bodyTextTheme.labelMedium,
  //   labelSmall: bodyTextTheme.labelSmall,
  // );

  /// override apply
  return textThemeOverrides(displayTextTheme, bodyTextTheme);
  // return textTheme;
}
