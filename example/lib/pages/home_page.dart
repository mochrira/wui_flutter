import 'package:example/pages/form_page.dart';
import 'package:example/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wui_flutter/modals/sheet.dart';
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
      body: WuiSliverView.withRefreshIndicator(
        onRefresh: () async {
          
        },
        appBar: WuiSliverAppBar(
          title: const Text("Dashboard"),
          subTitle: const Text("50 Pengguna"),
          actions: [IconButton(
            onPressed: () {}, 
            icon: Icon(MdiIcons.magnify)
          )],
        ),
        body: WuiSliverList(
          count: 50,
          builder: (BuildContext context, int index) {
            return WuiListTile(
              onTap: () async {
                wuiShowModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) => WuiActionSheet(
                    context: context, 
                    title: Text("Moch. Rizal Rachmadani $index"),
                    actions: [
                      WuiListTile(
                        leading: Icon(MdiIcons.leadPencil),
                        title: const Text("Edit Peserta"),
                        onTap: () {
                          Navigator.of(context).pop(0);
                        },
                      ),
                      WuiListTile(
                        leading: Icon(MdiIcons.trashCan),
                        title: const Text("Hapus Peserta"),
                        onTap: () {
                          Navigator.of(context).pop(1);
                        },
                      )
                    ]
                  ),
                );
              },
              leading: Icon(MdiIcons.accountCircle),
              title: Text("Moch. Rizal Rachmadani $index"),
              subTitle: const Text("mochrira@gmail.com"),
              trailing: Icon(MdiIcons.dotsVertical),
            );
          }
        ),
      )
    );
  }
}