import 'package:example/features/main/main_page_view.dart';
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
    return MaterialApp(
      theme: WuiTheme.light(context, primaryColor: Colors.blue),
      darkTheme: WuiTheme.dark(context, primaryColor: Colors.blue),
      title: 'Flutter Demo',
      home: const MainpageView()
    );
  }
}

