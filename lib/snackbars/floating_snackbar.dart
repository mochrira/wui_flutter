import 'dart:async';

import 'package:flutter/material.dart';

class WuiFloatingSnackbar {

  static open(BuildContext context, { required String text }) {
    final overlayState = Overlay.of(context);

    OverlayEntry overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return const Positioned(
        child: Text("Halo"),
      );
    });

    overlayState.insert(overlayEntry);

    Timer(Duration(milliseconds: 2000), () {
      overlayEntry.remove();
    });
  }

}