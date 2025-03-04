import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  int? _akses;
  DateTime? _aktifHingga = DateTime.now().subtract(const Duration(days: 3));

  @override
  Widget build(BuildContext context) {
    return WuiPage(
      body: WuiSliverView(
        appBar: const WuiSliverAppBar(
          title: Text("Pengguna Baru"),
        ),
        body: SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const WuiTextField(
                  labelText: "Nama Pengguna",
                ),
                const SizedBox(height: 24),
                const WuiTextField(
                  labelText: "Username"
                ),
                const SizedBox(height: 24),
                const WuiTextField(
                  labelText: "Password",
                  obscureText: true
                ),
                const SizedBox(height: 24),
                const WuiTextField(
                  labelText: "Ketik Ulang Password",
                  obscureText: true
                ),
                const SizedBox(height: 24),
                WuiSelectField(
                  labelText: "Akses",
                  sheetTitleText: "Pilih Akses",
                  choices: const {
                    0: "Administrator",
                    1: "Asesor",
                    2: "Admin Sekolah",
                    3: "Admin Dinas"
                  },
                  value: _akses,
                  onChange: (dynamic value) {
                    setState(() {
                      _akses = value;
                    });
                  },
                ),
                const SizedBox(height: 24),
                WuiDateField(
                  labelText: "Aktif hingga",
                  firstDate: DateTime.now().subtract(const Duration(days: 30)),
                  lastDate: DateTime.now().add(const Duration(days: 30)),
                  initialDate: _aktifHingga ?? DateTime.now(),
                  onChange: (DateTime? value) {
                    if(value != null) {
                      setState(() {
                        _aktifHingga = value;
                      });
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}