import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class WuiDialog extends StatelessWidget {

  final Widget child;
  final BoxConstraints? constraints;

  const WuiDialog({ super.key, required this.child, this.constraints});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Dialog(
        constraints: constraints,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: child,
      ),
    );
  }

  static Future<T?> builder<T>({required BuildContext context, required Widget Function(BuildContext) builder, BoxConstraints? constraints}) {
    return showDialog<T>(
      context: context, 
      builder: (context) => WuiDialog(
        constraints: constraints,
        child: builder(context)
      )
    );
  }

  static Future<T?> open<T>(BuildContext context, {
    required String title,
    required String message,
    required List<String> buttons
  }) {
    return showDialog(context: context, builder: (BuildContext context) {
      return WuiDialog(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: DefaultTextStyle(
                style: (Theme.of(context).textTheme.titleMedium ?? const TextStyle()).copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                child: Text(title),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
              child: DefaultTextStyle(
                style: (Theme.of(context).textTheme.bodyMedium ?? const TextStyle()),
                child: Text(message)
              )
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 16, 12),
              child: Row(
                spacing: 8.0,
                mainAxisAlignment: MainAxisAlignment.end,
                children: buttons.asMap().map(
                  (index, caption) => MapEntry(index, 
                    WuiButton(
                      style: WuiButtonStyle.base(),
                      size: WuiButtonSize.small,
                      child: Text(caption),
                      onPressed: () {
                        Navigator.of(context).pop(index);
                      },
                    )
                  )
                ).values.toList(),
              )
            )
          ],
        )
      );
    });
  }

}