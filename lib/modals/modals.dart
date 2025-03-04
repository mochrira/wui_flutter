import 'package:flutter/material.dart';

Future<dynamic> wuiShowModalBottomSheet({
  required BuildContext context,
  required Widget Function(BuildContext) builder
}) {
  return showModalBottomSheet(
    backgroundColor: Theme.of(context).colorScheme.surface,
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