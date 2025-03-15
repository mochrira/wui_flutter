import 'package:flutter/material.dart';

class WuiTabEntry<T> {
  final String text;
  final T value;

  const WuiTabEntry({required this.text, required this.value});
}

class WuiTab<T> extends StatelessWidget implements PreferredSizeWidget {

  final T selected;
  final List<WuiTabEntry<T>> items;
  final Function(T)? onChange;

  final double? height;
  final EdgeInsets? itemPadding;

  const WuiTab({super.key, required this.selected, required this.items, this.height, this.itemPadding, this.onChange});

  get computedHeight => height ?? 56;
  EdgeInsets get computedItemPadding => itemPadding ?? const EdgeInsets.symmetric(horizontal: 16);

  Widget _renderItem(BuildContext context, WuiTabEntry entry) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        if(onChange != null) onChange!(entry.value);
      },
      child: Stack(
        children: [Padding(
          padding: computedItemPadding,
          child: Center(
            child: Text(entry.text, style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 14,
              fontWeight: FontWeight.w500
            ))
          ),
        ),
        if(entry.value == selected) Positioned(
          bottom: 0,
          left: computedItemPadding.left,
          right: computedItemPadding.right,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(3), topRight: Radius.circular(3)
              )
            ),
            height: 3
          )
        )],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: computedHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: items!.map((entry) => _renderItem(context, entry)).toList(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(computedHeight);

}