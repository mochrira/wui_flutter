import 'package:flutter/material.dart';

import 'colors.dart';

class WuiTheme {

  static ThemeData light = ThemeData(
    primaryColor: WuiColors.primaryColor,
    colorScheme: ColorScheme(
      brightness: Brightness.light, 
      primary: WuiColors.primaryColor, 
      onPrimary: Colors.white, 
      secondary: WuiColors.primaryColor, 
      onSecondary: Colors.white, 
      error: WuiColors.errorColor, 
      onError: Colors.white, 
      surface: WuiColors.surfaceColor, 
      onSurface: Colors.black87
    ),
    bottomSheetTheme: BottomSheetThemeData(
      dragHandleColor: WuiColors.dragHandleColor
    )
  );

}