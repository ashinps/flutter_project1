import 'package:flutter/material.dart';

class ThemeProvider2 with ChangeNotifier{
  bool _isDark = false;
  bool get isDark=>_isDark;

  void toggleTheme(){
    _isDark=!isDark;
    notifyListeners();
  }

  ThemeData get themeData => _isDark? ThemeData.dark():ThemeData.light();
}
