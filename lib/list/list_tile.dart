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
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
      height: 1.5,
      fontWeight: FontWeight.w600
    );
  }

  TextStyle _defaultSubTitleTextStyle(context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
      height: 1.5
    );
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets defaultPadding = const EdgeInsets.symmetric(horizontal: 16);

    return Material(
      clipBehavior: Clip.antiAlias,
      color: fillColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(0)
      ),
      child: InkWell(
        onTap: onTap,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 56
          ),
          child: Padding(
            padding: padding ?? defaultPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 24,
              children: [
                if(leading != null) leading!,
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(title != null) DefaultTextStyle(
                        style: _defaultTitleTextStyle(context),
                        child: title!
                      ),
                      if(subTitle != null) DefaultTextStyle(
                        style: _defaultSubTitleTextStyle(context),
                        child: subTitle!
                      )
                    ],
                  ),
                ),
                if(trailing != null) trailing!
              ],
            ),
          ),
        ),
      )
    );
  }
}