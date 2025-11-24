import '../../flutterarchitecture.dart';

class TextThemeProvider extends ChangeNotifier {
  String _bodyFont = "Poppins";
  String _displayFont = "Poppins";
  bool isCustomTextTheme = false;

  String get bodyFont => _bodyFont;

  String get displayFont => _displayFont;

  void changeFonts({required String bodyFont, required String displayFont}) {
    _bodyFont = bodyFont;
    _displayFont = displayFont;
    notifyListeners();
  }
}
