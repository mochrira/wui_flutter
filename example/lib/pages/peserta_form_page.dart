import 'package:flutter/material.dart';

class PesertaFormPage extends StatefulWidget {
  const PesertaFormPage({super.key});

  @override
  State<PesertaFormPage> createState() => _PesertaFormPageState();
}

class _PesertaFormPageState extends State<PesertaFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("Form"),),
    );
  }
}