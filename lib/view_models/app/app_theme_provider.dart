import '../../library.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  // is dark mode
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.dark
        ? ThemeMode.light
        : ThemeMode.dark;
    notifyListeners();
  }

  /// 👇 System theme enable
  void setSystemTheme() {
    _themeMode = ThemeMode.system;
    notifyListeners();
  }

  /// Optional: Light theme set
  void setLightTheme() {
    _themeMode = ThemeMode.light;
    notifyListeners();
  }

  /// Optional: Dark theme set
  void setDarkTheme() {
    _themeMode = ThemeMode.dark;
    notifyListeners();
  }
}
