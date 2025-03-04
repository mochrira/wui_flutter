import 'package:flutter/material.dart';

class WuiColors {

  static get textColor => const Color.fromARGB(255, 63, 72, 90);
  
  static get primaryColor => const Color.fromARGB(255, 25, 118, 210);
  static get errorColor => const Color.fromARGB(255, 219, 35, 35);

  static get drawerButtonSelectedColor => primaryColor.withOpacity(0.12);

  static get surfaceColor => Colors.white;
  static get appBarBackgroundColor => surfaceColor;
  static get scaffoldBackgroundColor => surfaceColor;

  static get dragHandleColor => const Color.fromARGB(255, 220, 220, 220);
  static get selectedFillColor => primaryColor.withOpacity(.08);

  static get borderColor => const Color.fromARGB(255, 222, 222, 222);
  static get inputBorderColor => const Color.fromARGB(255, 190, 190, 190);

  static get inputLabelColor => const Color.fromARGB(244, 100, 100, 100);

  static get buttonBackgroundColor => const Color.fromARGB(255, 220, 220, 220);
  static get buttonForegroundColor => const Color.fromARGB(255, 63, 72, 90);

  static get buttonPrimaryBackgroundColor => primaryColor;
  static get buttonPrimaryForegroundColor => surfaceColor;

}