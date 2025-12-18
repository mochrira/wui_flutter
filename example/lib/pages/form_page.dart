import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  DateTime? _aktifHingga = DateTime.now().subtract(const Duration(days: 3));

  @override
  Widget build(BuildContext context) {
    return WuiPage(
      body: WuiSliverView(
        children: [
          const WuiSliverAppBar(
            title: Text("Pengguna Baru"),
          ),
          SliverToBoxAdapter(
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
                  const WuiSelectField(
                    labelText: "Akses",
                    entries: [DropdownMenuEntry(
                      value: "ADMINISTRATOR", 
                      label: "Administrator"
                    )],
                    initialSelection: "ADMINISTRATOR",
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
        ],
      )
    );
  }
}