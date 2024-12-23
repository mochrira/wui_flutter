import 'package:flutter/material.dart';
import 'package:wui/themes/constants.dart';

BorderSide wuiListTileBorderSide = BorderSide(
  color: wuiColorBorder
);

class WuiListTile extends StatelessWidget {

  final void Function()? onTap;
  final Widget? title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailingContent;
  final Widget? trailing;
  final String borderMode;

  const WuiListTile({ super.key, 
    this.onTap,
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.trailingContent,
    this.borderMode = 'none'
  });

  final IconThemeData iconThemeData = const IconThemeData(
    color: Colors.black87
  );  

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.grey.shade100,
      splashColor: Colors.grey.shade400,
      onPressed: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: borderMode == 'full' ? wuiListTileBorderSide : BorderSide.none
          )
        ),
        child: Row(
          crossAxisAlignment: subtitle == null ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            ...(leading != null ? [
              Padding(
                padding: EdgeInsets.only(top: subtitle != null ? 16 : 0),
                child: Container(
                  width: 40, height: 40,
                  alignment: Alignment.centerLeft,
                  child: leading,
                ),
              ),
              const SizedBox(width: 16),
            ] : []),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 14, bottom: 14, right: 12),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: borderMode == 'normal' ? wuiListTileBorderSide : BorderSide.none
                  )
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ...(title != null ? [DefaultTextStyle(
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: wuiColorHeading
                                  ), 
                                  child: Container(
                                    child: title
                                  )
                                )] : []),
                                ...(subtitle != null ? [DefaultTextStyle(
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: wuiColorText
                                  ), 
                                  child: Container(
                                    child: subtitle
                                  )
                                )] : []),
                              ],
                            ),
                          ),
                          ...(trailingContent != null ? [
                            Expanded(child: trailingContent!)
                          ] : [])
                        ],
                      ),
                    ),
                    ...(trailing != null ? [
                      Container(
                        width: 40, height: 40,
                        alignment: Alignment.centerRight,
                        child: trailing,
                    )] : [])
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}