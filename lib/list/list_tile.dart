import 'package:flutter/material.dart';

class WuiListTile extends StatelessWidget {

  final void Function()? onTap;
  final Widget? title;
  final Widget? subTitle;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsets? padding;
  final Color? fillColor;

  const WuiListTile({ super.key, 
    this.onTap,
    this.title,
    this.subTitle,
    this.leading,
    this.trailing,
    this.padding,
    this.fillColor
  });

  final IconThemeData iconThemeData = const IconThemeData(
    color: Colors.black87
  );  

  @override
  Widget build(BuildContext context) {
    EdgeInsets defaultPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 16);

    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      elevation: 0.0,
      focusElevation: 0.0,
      hoverElevation: 0.0,
      highlightElevation: 0.0,
      disabledElevation: 0.0,
      fillColor: fillColor,
      padding: padding ?? defaultPadding,
      onPressed: onTap,
      child: Row(
        children: [
          ...(leading != null ? [IconTheme(
            data: Theme.of(context).iconTheme.copyWith(
              size: 24,
            ),
            child: leading!
          ), const SizedBox(width: 32)] : []),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4.0,
              children: [
                ...(title != null ? [DefaultTextStyle(
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16.0,
                    height: 1.15,
                    color: Theme.of(context).colorScheme.onSurface
                  ),
                  child: title!
                )] : []),
                ...(subTitle != null ? [DefaultTextStyle(
                   style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14.0,
                    height: 1.15,
                    color: Theme.of(context).colorScheme.onSurface
                  ),
                  child: subTitle!
                )] : [])
              ],
            ),
          ),
          ...(trailing != null ? [const SizedBox(width: 12), trailing!, const SizedBox(width: 4)] : []),
        ],
      )
    );
  }
}