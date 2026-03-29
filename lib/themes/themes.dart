import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WuiTheme {
  static AppBarTheme appBarTheme(BuildContext context) {
    return const AppBarTheme(
      actionsPadding: EdgeInsets.only(right: 8),
      titleTextStyle: TextStyle(
        fontSize: 18
      )
    );
  }

  static ThemeData light(BuildContext context, {
    Color? primaryColor
  }) {
    Color calculatedPrimaryColor = primaryColor ?? Colors.blue;
    Color onPrimaryColor = calculatedPrimaryColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
    return ThemeData(
      primaryColor: calculatedPrimaryColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: calculatedPrimaryColor
      ),
      fontFamily: "Inter",
      brightness: Brightness.light,
      appBarTheme: appBarTheme(context).copyWith(
        systemOverlayStyle: SystemUiOverlayStyle.dark
      ),
      colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        onSurface: Colors.grey.shade700,
        primary: calculatedPrimaryColor,
        onPrimary: onPrimaryColor,
        outline: Colors.grey.shade400,
        error: const Color.fromRGBO(164, 40, 40, 1),
        onError: const Color.fromRGBO(245, 240, 240, 1)
      )
    );
  }

  static ThemeData dark(BuildContext context, {
    Color? primaryColor
  }) {
    Color calculatedPrimaryColor = primaryColor ?? Colors.blue;
    Color onPrimaryColor = calculatedPrimaryColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;

    return ThemeData(
      primaryColor: calculatedPrimaryColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: calculatedPrimaryColor
      ),
      fontFamily: "Inter",
      brightness: Brightness.dark,
      appBarTheme: appBarTheme(context).copyWith(
        systemOverlayStyle: SystemUiOverlayStyle.light
      ),
      colorScheme: ColorScheme.dark(
        surface: Colors.grey.shade900,
        onSurface: Colors.grey.shade400,
        primary: calculatedPrimaryColor,
        onPrimary: onPrimaryColor,
        outline: Colors.black38,
        error: const Color.fromRGBO(164, 40, 40, 1),
        onError: const Color.fromRGBO(245, 240, 240, 1)
      )
    );
  }
}