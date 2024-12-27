import 'package:flutter/material.dart';

import '../styles/colors.dart';

class WuiApp extends StatelessWidget {

  final String? title;
  final Widget? home;

  const WuiApp({super.key, this.title, this.home});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title ?? "",
      home: home,
      theme: ThemeData(
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
        )
      ),
    );
  }
}