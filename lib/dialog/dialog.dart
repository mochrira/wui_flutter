import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class WuiDialog extends StatelessWidget {

  final String? title;
  final String? message;
  final List<String>? buttons;
  const WuiDialog({ super.key, this.title, this.message, this.buttons });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ...(title != null ? [Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: DefaultTextStyle(
              style: (Theme.of(context).textTheme.titleMedium ?? const TextStyle()).copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
              child: Container(child: Text(title ?? "")),
            ),
          )] : []),
          ...(message != null ? [Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
            child: DefaultTextStyle(
              style: (Theme.of(context).textTheme.bodyMedium ?? const TextStyle()),
              child: Text(message ?? "")
            )
          )] : []),
          ...(buttons != null ? [Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 16, 12),
            child: Row(
              spacing: 8.0,
              mainAxisAlignment: MainAxisAlignment.end,
              children: buttons!.asMap().map(
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
          )] : [])
        ],
      ),
    );
  }

  static Future<dynamic> open(BuildContext context, {
    required String title,
    required String message,
    required List<String> buttons
  }) {
    return showDialog(context: context, builder: (BuildContext context) {
      return WuiDialog(
        title: title,
        message: message,
        buttons: buttons
      );
    });
  }
}