import 'package:flutter/material.dart';

class WuiModal extends StatelessWidget {

  final Widget? header;
  final Widget? contentRaw;
  final Widget? content;
  final Widget? footer;
  final BoxConstraints? constraints;

  const WuiModal({super.key, this.header, this.contentRaw, this.content, this.footer, this.constraints});

  @override
  Widget build(BuildContext context) {

    EdgeInsets defaultContentPadding = EdgeInsets.fromLTRB(
      24, header != null ? 12 : 24, 24, footer != null? 12 : 24
    );

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      insetPadding: const EdgeInsets.all(0),
      constraints: constraints,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          if(header != null) Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 20),
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: "Inter",
                color: Theme.of(context).colorScheme.onSurface
              ),
              child: header!
            ),
          ),
          if(contentRaw != null ) contentRaw! else if(content != null) Padding(
            padding: defaultContentPadding,
            child: content,
          ),
          if(footer != null) Padding(
            padding: const EdgeInsets.all(24),
            child: footer,
          )
        ],
      )
    );
  }
  
}