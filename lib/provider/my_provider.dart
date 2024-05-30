import 'package:flutter/material.dart';

class providerApp extends ChangeNotifier {
  String AppLanguage = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String languageCode) {
    AppLanguage = languageCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }

  String getBackground() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/main_bg.png';
    } else {
      return 'assets/images/main_darkbg.png';
    }
  }
}
