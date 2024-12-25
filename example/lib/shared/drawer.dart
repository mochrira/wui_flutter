import 'package:example/pages/profil_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wui_flutter/wui_flutter.dart';

import '../pages/home_page.dart';
import '../pages/tugas_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return WuiDrawer(
      title: const Text("Moch. Rizal Rachmadani"),
      subTitle: const Text("mochrira@gmail.com"),
      primaryItems: [
        WuiDrawerButton(
          id: 'home',
          icon: Icon(MdiIcons.home),
          onPressed: () { 
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => const HomePage()
            ));
          },
          child: const Text("Dashboard")
        ),
        WuiDrawerButton(
          id: 'tugas',
          icon: Icon(MdiIcons.clipboardCheck),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => const TugasPage()
            ));
          },
          child: const Text("Tugas")
        ),
        const WuiDrawerDivider(
          child: Text("TRANSAKSI")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.textBox),
          onPressed: () { },
          child: const Text("Penjualan")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.checkDecagram),
          onPressed: () { },
          child: const Text("Pengambilan")
        ),
        const WuiDrawerDivider(
          child: Text("KONTAK")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.accountBox),
          onPressed: () { },
          child: const Text("Data Kontak")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.accountBoxMultiple),
          onPressed: () { },
          child: const Text("Data Grup")
        ),
        const WuiDrawerDivider(
          child: Text("LAYANAN")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.shopping),
          onPressed: () { },
          child: const Text("Data Layanan")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.folder),
          onPressed: () { },
          child: const Text("Data Kategori")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.scaleBalance),
          onPressed: () { },
          child: const Text("Data Satuan")
        ),
      ],
      secondaryItems: [
        WuiDrawerButton(
          id: 'profil',
          icon: Icon(MdiIcons.accountCircle),
          onPressed: () { 
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const ProfilPage())
            );
          },
          child: const Text("Profil Saya")
        ),
        WuiDrawerButton(
          icon: Icon(MdiIcons.exitToApp),
          onPressed: () { 
            
          },
          child: const Text("Keluar")
        ),
      ],
    );
  }
}