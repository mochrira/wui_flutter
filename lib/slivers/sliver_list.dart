import 'package:flutter/material.dart';

class WuiSliverList extends StatelessWidget {

  final int count;
  final Widget Function(BuildContext context, int index) builder;

  const WuiSliverList({super.key, required this.count, required this.builder});

  @override
  Widget build(BuildContext context) {
    return SliverList(      
      delegate: SliverChildBuilderDelegate(
        builder, childCount: count
      )
    );
  }
}