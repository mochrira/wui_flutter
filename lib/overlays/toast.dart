import 'dart:async';

import 'package:flutter/material.dart';

class WuiToast {

  static void open(BuildContext context, { required String text }) {
    final state = Overlay.of(context);

    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    

    final OverlayEntry entry = OverlayEntry(builder: (BuildContext context) {
      return Positioned(
        bottom: size.height - (size.height * .95),
        left: 0,
        right: 0,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            constraints: BoxConstraints(
              maxWidth: size.width * .8,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.onSurface)
            ),
            child: Text(text, style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              fontFamily: "Inter",
              decoration: TextDecoration.none
            ))
          ),
        )
      );
    });

    state.insert(entry);

    Timer(const Duration(milliseconds: 2000), () {
      entry.remove();
    });
  }

}