import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  @override
  Widget build(BuildContext context) {
    return const WuiPage(
      body: WuiSliverView(
        children: [
          WuiSliverAppBar(
            title: Text("Pengguna Baru"),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  WuiTextField(
                    labelText: "Nama Pengguna",
                  ),
                  SizedBox(height: 24),
                  WuiTextField(
                    labelText: "Username"
                  ),
                  SizedBox(height: 24),
                  WuiTextField(
                    labelText: "Password",
                    obscureText: true
                  ),
                  SizedBox(height: 24),
                  WuiTextField(
                    labelText: "Ketik Ulang Password",
                    obscureText: true
                  ),
                  SizedBox(height: 24),
                  WuiSelectField(
                    labelText: "Akses",
                    entries: [DropdownMenuEntry(
                      value: "ADMINISTRATOR", 
                      label: "Administrator"
                    )],
                    initialSelection: "ADMINISTRATOR",
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