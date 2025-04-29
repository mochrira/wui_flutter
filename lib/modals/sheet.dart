import 'package:flutter/material.dart';

class WuiBottomSheet {

  static Future<T> open<T>(BuildContext context, {
    required Widget Function(BuildContext) builder,
    double? maxWidth
  }) async {
    return await showModalBottomSheet(
      context: context, 
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16), 
          topRight: Radius.circular(16)
        )
      ),
      constraints: BoxConstraints( 
        maxWidth: maxWidth ?? 600 
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: builder(context),
      )
    );
  }

  static Future<T> builder<T>(BuildContext context, {Widget? title, required Function(BuildContext) builder}) async {
    return await showModalBottomSheet(
      context: context, 
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      showDragHandle: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...(title != null ? [title] : []),
            builder(context)
          ],
        ),
      )
    );
  }


  static Future<T> action<T>(BuildContext context, {Widget? title, List<Widget>? actions}) async {
    return await showModalBottomSheet(
      context: context, 
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...(title != null ? [title] : []),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: actions ?? [],
              ),
            )
          ],
        ),
      )
    );
  }

}