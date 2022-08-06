

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  bool LightTheme = true;

  void chanceTheme() {
    LightTheme =!LightTheme;
    notifyListeners();
  } 

  bool get currentThemeValue => this.LightTheme;
  ThemeData get currentTheme => LightTheme ? ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    )
  ) : ThemeData.dark();
}