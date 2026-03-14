import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WuiTheme {
  static AppBarTheme appBarTheme = const AppBarTheme(
    actionsPadding: EdgeInsets.only(right: 8),
    titleTextStyle: TextStyle(
      fontSize: 18
    )
  );

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
      appBarTheme: appBarTheme.copyWith(
        systemOverlayStyle: SystemUiOverlayStyle.dark
      ),
      colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        onSurface: Colors.grey.shade700,
        primary: calculatedPrimaryColor,
        onPrimary: Colors.grey.shade400,
        outline: Colors.grey.shade400
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
      appBarTheme: appBarTheme.copyWith(
        systemOverlayStyle: SystemUiOverlayStyle.light
      ),
      colorScheme: ColorScheme.dark(
        surface: Colors.grey.shade900,
        onSurface: Colors.grey.shade400,
        primary: calculatedPrimaryColor,
        onPrimary: Colors.grey.shade700,
        outline: Colors.black38
      )
    );
  }
}