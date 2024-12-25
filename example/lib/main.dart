import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';
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
      title: 'Flutter Demo',
      theme: WuiDefaultTheme.light(context, primarySwatch: Colors.blue),
      home: const HomePage()
    );
  }
}

