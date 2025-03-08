import 'package:flutter/material.dart';

class WuiSnackbar {

  static open(BuildContext context, { required String text }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      showCloseIcon: true,
      closeIconColor: Theme.of(context).colorScheme.onSurface,
      backgroundColor: Theme.of(context).colorScheme.surface,
      content: Text(text, style: TextStyle(
        fontFamily: "Inter",
        fontSize: 14.0,
        color: Theme.of(context).colorScheme.onSurface
      ))
    ));
  }

}