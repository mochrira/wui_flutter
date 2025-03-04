import 'package:flutter/material.dart';

class FocusedDate extends InheritedWidget {
  const FocusedDate({super.key, 
    required super.child,
    this.date,
  });

  final DateTime? date;

  @override
  bool updateShouldNotify(FocusedDate oldWidget) {
    return !DateUtils.isSameDay(date, oldWidget.date);
  }

  static DateTime? maybeOf(BuildContext context) {
    final FocusedDate? focusedDate = context.dependOnInheritedWidgetOfExactType<FocusedDate>();
    return focusedDate?.date;
  }
}