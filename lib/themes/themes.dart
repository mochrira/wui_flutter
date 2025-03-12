import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WuiTheme {
  static ThemeData light(BuildContext context, {
    Color? primaryColor
  }) {
    Color calculatedPrimaryColor = primaryColor ?? Colors.blue;
    return ThemeData(
      primaryColor: calculatedPrimaryColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: calculatedPrimaryColor
      ),
      fontFamily: "Inter",
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark
      ),
      colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        primary: Colors.grey.shade900
      )
    );
  }

  static ThemeData dark(BuildContext context, {
    Color? primaryColor
  }) {
    Color calculatedPrimaryColor = primaryColor ?? Colors.blue;
    return ThemeData(
      primaryColor: calculatedPrimaryColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: calculatedPrimaryColor
      ),
      fontFamily: "Inter",
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light
      ),
      colorScheme: ColorScheme.dark(
        surface: Colors.grey.shade900,
        primary: Colors.grey.shade100
      )
    );
  }
}