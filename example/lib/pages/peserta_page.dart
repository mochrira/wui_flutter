import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wui/wui.dart';

class PesertaPage extends StatefulWidget {
  const PesertaPage({
    super.key,
  });

  @override
  State<PesertaPage> createState() => _PesertaPageState();
}

class _PesertaPageState extends State<PesertaPage> {

  // bool searchMode = false;

  // toggleSearch() {
  //   setState(() {
  //     searchMode = !searchMode;
  //   });
  // }

  // List<Peserta> _dataPeserta = [];

  // Future<void> readJson() async {
  //   final String response = await rootBundle.loadString('assets/peserta.json');
  //   final data = await json.decode(response);
  //   setState(() {
  //     _dataPeserta = List<Peserta>.from(data.map((item) => Peserta.fromJson(item)));
  //   });
  // }

  // @override
  // void initState() {
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
  //     await readJson();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return WuiPage(
      drawer: WuiDrawer(
        items: [
          const WuiDrawerHeader(
            title: Text("Moch. Rizal Rachmadani"),
            subTitle: Text("mochrira@gmail.com"),
          ),
          WuiDrawerButton(
            icon: Icon(MdiIcons.home),
            onPressed: () { },
            child: const Text("Dashboard")
          ),
          WuiDrawerButton(
            icon: Icon(MdiIcons.clipboardCheck),
            onPressed: () { },
            child: const Text("Tugas")
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
          WuiDrawerButton(
            icon: Icon(MdiIcons.shopping),
            onPressed: () { },
            child: const Text("Layanan")
          ),
          WuiDrawerButton(
            icon: Icon(MdiIcons.folder),
            onPressed: () { },
            child: const Text("Kategori")
          ),
          WuiDrawerButton(
            icon: Icon(MdiIcons.scaleBalance),
            onPressed: () { },
            child: const Text("Satuan")
          ),
          WuiDrawerButton(
            icon: Icon(MdiIcons.accountBox),
            onPressed: () { },
            child: const Text("Kontak")
          ),
          WuiDrawerButton(
            icon: Icon(MdiIcons.accountBoxMultiple),
            onPressed: () { },
            child: const Text("Grup")
          )
        ],
      ),
      appBar: const WuiAppBar(),
      body: Container()
    );
  }
}