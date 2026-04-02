import 'package:flutter/material.dart';

class WuiListTile extends StatelessWidget {

  final void Function()? onTap;
  final Widget? title;
  final Widget? subTitle;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsets? padding;
  final Color? fillColor;
  final BorderRadius? borderRadius;

  const WuiListTile({ super.key, 
    this.borderRadius,
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

  TextStyle _defaultTitleTextStyle(context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: 16,
      height: 1.15,
      color: Theme.of(context).colorScheme.onSurface,
      overflow: TextOverflow.ellipsis
    );
  }

  TextStyle _defaultSubTitleTextStyle(context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: 12,
      height: 1.15,
      color: Theme.of(context).colorScheme.onSurface,
      overflow: TextOverflow.ellipsis
    );
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets defaultPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 16);

    return Material(
      clipBehavior: Clip.antiAlias,
      color: fillColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(0)
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: padding ?? defaultPadding,
          child: Row(
            spacing: 24,
            children: [
              if(leading != null) leading!,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4.0,
                  children: [
                    if(title != null) DefaultTextStyle(
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600
                      ) ?? _defaultTitleTextStyle(context),
                      child: title!
                    ),
                    if(subTitle != null) DefaultTextStyle(
                       style: Theme.of(context).textTheme.bodySmall?.copyWith(overflow: TextOverflow.ellipsis) ?? _defaultSubTitleTextStyle(context),
                      child: subTitle!
                    )
                  ],
                ),
              ),
              ...(trailing != null ? [const SizedBox(width: 12), trailing!, const SizedBox(width: 4)] : []),
            ],
          ),
        ),
      )
    );
  }
}