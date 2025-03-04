import 'package:flutter/material.dart';

class WuiTheme {
  static ThemeData light(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100
      )
    );
  }

  static ThemeData dark(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        surface: Colors.grey.shade900
      )
    );
  }
}