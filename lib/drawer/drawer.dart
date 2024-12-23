import 'package:flutter/material.dart';

class WuiDrawer extends StatelessWidget {

  final List<Widget>? items;

  const WuiDrawer({super.key, this.items});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: items ?? []
          ),
        ),
      )
    );
  }
}