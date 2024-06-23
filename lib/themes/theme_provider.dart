import 'package:flutter/material.dart';
import 'package:food_cart/themes/light_themes.dart';
import 'package:food_cart/themes/dark_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightmode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkmode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = lightmode;
    }
    notifyListeners(); // Notify listeners about the theme change
  }
}
