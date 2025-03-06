
import 'package:flutter/material.dart';

typedef CloseLoadingDialog = bool Function();

@immutable
class WuiLoadingDialogController {

  final CloseLoadingDialog close;

  const WuiLoadingDialogController({
    required this.close
  });

}

class WuiLoadingDialog {

  static WuiLoadingDialogController open(BuildContext context) {

    final overlayState = Overlay.of(context);

    final overlay = OverlayEntry(builder: (context) {
      return Material(
        color: Colors.black.withAlpha(150),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(28),
            ),
            width: 56.0, height: 56.0,
            child: const Center(
              child: SizedBox(
                width: 36.0, height: 36.0,
                child: CircularProgressIndicator(
                  strokeWidth: 3
                ),
              )
            )
          )
        )
      );
    });

    overlayState.insert(overlay);
    
    return WuiLoadingDialogController(
      close: () {
        overlay.remove();
        return true;
      }
    );
  }

}