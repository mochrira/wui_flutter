import 'package:example/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((Duration duration) {
      WuiDrawerModel().setActiveId('home');
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return WuiPage(
      drawer: const AppDrawer(),
      appBar: const WuiAppBar(),
      body: Container()
    );
  }
}