import 'package:flutter/material.dart';

import '../styles/typography.dart';

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
            data: const IconThemeData(
              size: 32
            ),
            child: leading!
          ), const SizedBox(width: 20)] : []),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...(title != null ? [DefaultTextStyle(
                  style: WuiTypography.listTileTitleStyle,
                  child: title!
                )] : []),
                ...(subTitle != null ? [DefaultTextStyle(
                  style: WuiTypography.listTileSubTitleStyle,
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