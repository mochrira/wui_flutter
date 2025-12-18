import 'package:example/pages/form_page.dart';
import 'package:example/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
      fab: WuiButtonFab(
        icon: Icon(MdiIcons.plus),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FormPage()));
        }
      ),
      body: WuiSliverView(
        children: [
          WuiSliverAppBar(
            flexibleTitleText: "Dashboard",
            flexibleSubTitleText: "50 Pengguna",
            actions: [IconButton(
              onPressed: () {}, 
              icon: Icon(MdiIcons.magnify)
            )],
          ),
          WuiSliverList(
            count: 50,
            builder: (BuildContext context, int index) {
              return WuiListTile(
                onTap: () async {
                  
                },
                leading: Icon(MdiIcons.accountCircle),
                title: Text("Moch. Rizal Rachmadani $index"),
                subTitle: const Text("mochrira@gmail.com"),
                trailing: Icon(MdiIcons.dotsVertical),
              );
            }
          )
        ]
      )
    );
  }
}