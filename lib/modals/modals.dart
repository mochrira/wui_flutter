import 'package:flutter/material.dart';
import 'package:wui_flutter/modals/sheet.dart';

import '../styles/colors.dart';

dynamic wuiShowModalSheet({
  required BuildContext context,
  required List<Widget>? Function(BuildContext context) actions,
  Widget? title
}) {
  return showModalBottomSheet(
    backgroundColor: WuiColors.surfaceColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero)
    ),
    context: context, 
    builder: (BuildContext context) => WuiSheet(title: title, actions: actions(context))
  );
}