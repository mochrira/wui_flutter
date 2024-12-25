import 'package:example/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class TugasPage extends StatefulWidget {
  const TugasPage({super.key});

  @override
  State<TugasPage> createState() => _TugasPageState();
}

class _TugasPageState extends State<TugasPage> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((Duration duration) {
      WuiDrawerModel().setActiveId('tugas');
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