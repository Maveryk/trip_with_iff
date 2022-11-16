// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  //
  bool isDarkModeOn = false;
  ThemeData? theme;
  bool light = false;
  ThemeData themeDark = ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: Colors.deepOrange);

  ThemeData themeLight = ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: Colors.deepOrange);

  void inicializarTheme() {
    theme = themeLight;
  }

  void updateTheme(bool isDarkModeOn) {
    this.isDarkModeOn = isDarkModeOn;
    light = isDarkModeOn;
    if (isDarkModeOn) {
      theme = themeDark;
    } else {
      theme = themeLight;
    }
    notifyListeners();
  }
}
