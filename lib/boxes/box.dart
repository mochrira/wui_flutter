import 'package:flutter/material.dart';

class WuiBox extends StatelessWidget {

  final Widget? title;
  final Widget? content;
  final Widget? leading;
  final Widget? trailing;
  final double? width;
  final void Function()? onTap;

  const WuiBox({super.key, this.title, this.content, this.leading, this.trailing, this.width, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
          width: 1
        )
      ),
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
          child: Row(
            spacing: 8,
            children: [
              if(leading != null) leading!,
              Flexible(
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if(title != null) DefaultTextStyle(style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onSurface
                    ), child: title!),
                    if(content != null) DefaultTextStyle(style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onSurface
                    ), child: content!)
                  ],
                ),
              ),
              if(trailing != null) trailing!
            ],
          ),
        ),
      ),
    );
  }
}