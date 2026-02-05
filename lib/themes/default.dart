import 'package:flutter/material.dart';
import '../themes/constants.dart';

class WuiDefaultTheme {
  static ThemeData light(BuildContext context, { MaterialColor? primarySwatch }) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: primarySwatch ?? Colors.blue,
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
        backgroundColor: Colors.white
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
        bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w500,
          color: wuiDefaultTextColor,
          fontSize: 16,
          fontFamily: wuiDefaultFontFamily,
          height: 1.5
        ),
        bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: wuiDefaultTextColor,
          fontSize: wuiDefaultFontSize,
          fontFamily: wuiDefaultFontFamily,
          height: 1.5
        )
      ),
      iconTheme: Theme.of(context).iconTheme.copyWith(
        color: wuiDefaultTextColor
      )
    );
  }
}