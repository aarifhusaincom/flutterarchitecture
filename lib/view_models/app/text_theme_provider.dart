import '../../library.dart';

class TextThemeProvider extends ChangeNotifier {
  String _bodyFont = "Poppins";
  String _displayFont = "Poppins";
  bool _isCustomTextTheme = false;

  String get bodyFont => _bodyFont;

  String get displayFont => _displayFont;

  bool get isCustomTextTheme => _isCustomTextTheme;

  set isCustomTextTheme(bool value) {
    _isCustomTextTheme = value;
    notifyListeners();
  }

  void changeFonts({required String bodyFont, required String displayFont}) {
    _bodyFont = bodyFont;
    _displayFont = displayFont;
    notifyListeners();
  }

  /// Delete older GoogleFonts cache but keep last 3 newest files
  Future<void> cleanOldGoogleFontsCache() async {
    try {
      await GoogleFontsCacheCleaner.cleanKeepLast(keep: 3);
    } catch (e) {
      log("⚠ Error cleaning GoogleFonts cache: $e");
    }
  }
}
