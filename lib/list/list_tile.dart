import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/typography.dart';
import '../themes/constants.dart';

BorderSide wuiListTileBorderSide = BorderSide(
  color: wuiColorBorder
);

class WuiListTile extends StatelessWidget {

  final void Function()? onTap;
  final Widget? title;
  final Widget? subTitle;
  final Widget? leading;
  final Widget? trailing;

  const WuiListTile({ super.key, 
    this.onTap,
    this.title,
    this.subTitle,
    this.leading,
    this.trailing
  });

  final IconThemeData iconThemeData = const IconThemeData(
    color: Colors.black87
  );  

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: const EdgeInsets.all(16),
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