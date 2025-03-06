import 'package:flutter/material.dart';

class WuiLoading extends StatelessWidget {
  const WuiLoading({ super.key });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 28, height: 28,
      child: CircularProgressIndicator(
        strokeWidth: 3,
      ),
    );
  }

  static bool _allowPop = false;

  static open(BuildContext context) {
    _allowPop = false;
    showDialog(
      context: context, 
      barrierDismissible: false,
      useRootNavigator: true,
      builder: (BuildContext context) {
        return PopScope(
          canPop: _allowPop,
          child: const Dialog(
            elevation: 0,
            child: SizedBox(
              width: 56.0, height: 56.0,
              child: CircularProgressIndicator(
                strokeWidth: 3,
              )
            )
          ),
        );
      }
    );
  }

  static close(context) {
    _allowPop = true;
    Navigator.of(context).pop();
  }

}