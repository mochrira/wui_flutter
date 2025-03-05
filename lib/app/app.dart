import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class WuiApp extends StatelessWidget {

  final String? title;
  final Widget? home;
  final Color? primaryColor;

  const WuiApp({super.key, this.title, this.home, this.primaryColor});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title ?? "",
      home: home,
      theme: WuiTheme.light(context),
      darkTheme: WuiTheme.dark(context)
    );
  }
}