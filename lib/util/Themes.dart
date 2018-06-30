import 'package:flutter/material.dart';

class Themes {
  static ThemeData iosTheme() {
    return ThemeData(
      primaryColor: Colors.grey[100],
      primarySwatch: Colors.blue,
      primaryColorBrightness: Brightness.light,
    );
  }

  static ThemeData androidTheme() {
    return ThemeData(
      primaryColor: Colors.blue[500],
      primaryColorDark: Colors.blue[700],
      accentColor: Colors.pinkAccent,
    );
  }

}
