import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class WuiDialog extends StatelessWidget {

  final Widget? header;
  final Widget? content;
  final Widget? footer;
  final BoxConstraints? constraints;

  const WuiDialog({ super.key, this.header, this.content, this.footer, this.constraints});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Dialog(
        constraints: constraints,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            if(header != null) header!,
            if(content != null) content!,
            if(footer != null) footer!
          ],
        ),
      ),
    );
  }

  static Future<T?> open<T>(BuildContext context, {
    required String title,
    required String message,
    required List<String> buttons
  }) {
    return showDialog(context: context, builder: (BuildContext context) {
      return WuiDialog(
        header: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: DefaultTextStyle(
            style: (Theme.of(context).textTheme.titleMedium ?? const TextStyle()).copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
            child: Text(title),
          ),
        ),
        content: Container(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
          child: DefaultTextStyle(
            style: (Theme.of(context).textTheme.bodyMedium ?? const TextStyle()),
            child: Text(message)
          )
        ),
        footer: Container(
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
      );
    });
  }

  static Future<T?> custom<T>(BuildContext context, {
    Widget? title,
    Widget? content,
    Widget? footer,
    BoxConstraints? constraints
  }) {
    return showDialog(context: context, builder: (context) => WuiDialog(
      header: Row(
        children: [
          if(title != null) title,
          WuiButton(
            child: const Icon(Icons.close),
            onPressed: () {}
          )
        ],
      ),
      content: content,
      footer: footer,
      constraints: constraints,
    ));
  }
}