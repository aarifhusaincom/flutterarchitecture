import 'package:flutter/material.dart';

class AppViewModel extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
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
