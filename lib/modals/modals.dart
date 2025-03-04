import 'package:flutter/material.dart';

import '../styles/colors.dart';

Future<dynamic> wuiShowModalBottomSheet({
  required BuildContext context,
  required Widget Function(BuildContext) builder
}) {
  return showModalBottomSheet(
    backgroundColor: WuiColors.surfaceColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8)
      )
    ),
    showDragHandle: true,
    context: context, 
    isScrollControlled: true,
    builder: (BuildContext context) => builder(context)
  );
}