import 'package:example/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((Duration duration) {
      WuiDrawerModel().setActiveId('profil');
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