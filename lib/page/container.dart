import 'package:flutter/material.dart';

class WuiPageContainer extends StatelessWidget {

  final Widget child;

  const WuiPageContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth;

      if(constraints.maxWidth >= 1400) {
        maxWidth = 1320;
      } else if(constraints.maxWidth >= 1200) {
        maxWidth = 1140;
      } else if(constraints.maxWidth >= 992) {
        maxWidth = 960;
      } else if(constraints.maxWidth >= 768) {
        maxWidth = 720;
      } else if(constraints.maxWidth >= 576) {
        maxWidth = 540;
      } else {
        maxWidth = constraints.maxWidth;
      }

      return Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: child
            )
          )
        ),
      );
    });
  }
}