import 'package:example/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

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
      drawer: const AppDrawer(),
      appBar: const WuiAppBar(),
      body: Container()
    );
  }
}