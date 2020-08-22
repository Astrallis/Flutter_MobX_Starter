import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final BuildContext buildContext;
  AppTheme(this.buildContext);
  ThemeData getLightThemeData() {
    ThemeData lightTheme = ThemeData(scaffoldBackgroundColor: Colors.white);
    return lightTheme;
  }

  ThemeData getDarkThemeData() {
    ThemeData darkTheme = ThemeData(scaffoldBackgroundColor: Colors.black);
    return darkTheme;
  }
}
