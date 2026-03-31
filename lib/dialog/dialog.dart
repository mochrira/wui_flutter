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
    BoxConstraints? constraints,
    required String title,
    required String message,
    required List<String> buttons,
    int? defaultIndex
  }) {
    return showDialog(context: context, builder: (BuildContext context) {
      return WuiDialog(
        constraints: constraints ?? const BoxConstraints(maxWidth: 400),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              DefaultTextStyle(
                style: (Theme.of(context).textTheme.titleMedium ?? const TextStyle()).copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                child: Text(title),
              ),
              const SizedBox(height: 16),
              DefaultTextStyle(
                style: (Theme.of(context).textTheme.bodyMedium ?? const TextStyle()),
                child: Text(message)
              ),
              const SizedBox(height: 16),
              Row(
                spacing: 8.0,
                mainAxisAlignment: MainAxisAlignment.end,
                children: buttons.asMap().map(
                  (index, caption) => MapEntry(index, 
                    TextButton(
                      style: WuiButtonSizes.small(context).merge(
                        defaultIndex == index ? WuiTextButtonStyle.primary(context) : WuiTextButtonStyle.normal(context)
                      ),
                      child: Text(caption),
                      onPressed: () {
                        Navigator.of(context).pop(index);
                      },
                    )
                  )
                ).values.toList(),
              )
            ],
          ),
        )
      );
    });
  }

}