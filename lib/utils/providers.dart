import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode _themeMode;

  ThemeChanger(this._themeMode);

  getTheme() {
    return _themeMode;
  }

  setTheme(ThemeMode theme) {
    _themeMode = theme;
    notifyListeners();
  }
}
// class ThemeChanger with ChangeNotifier {
//   late ThemeMode _currentTheme;

//   ThemeMode get currentTheme => _currentTheme;

//   themeMode(bool themebool) {
//     if (themebool) {
//       _currentTheme = ThemeMode.dark;
//     } else {
//       _currentTheme = ThemeMode.light;
//     }
//     notifyListeners();
//   }
// }
