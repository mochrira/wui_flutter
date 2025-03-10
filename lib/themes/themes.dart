import 'package:flutter/material.dart';

class WuiTheme {
  static ThemeData light(BuildContext context) {
    return ThemeData(
      fontFamily: "Inter",
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        primary: Colors.black
      )
    );
  }

  static ThemeData dark(BuildContext context) {
    return ThemeData(
      fontFamily: "Inter",
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        surface: Colors.grey.shade900,
        primary: Colors.white
      )
    );
  }
}