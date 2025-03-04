import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

import 'pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {  

  @override
  Widget build(BuildContext context) {  
    return const WuiApp(
      title: 'Flutter Demo',
      home: HomePage()
    );
  }
}

