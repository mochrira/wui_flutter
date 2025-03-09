import 'package:flutter/material.dart';

class WuiSliverAppBar extends StatefulWidget {

  final ScrollController? controller;

  final Widget? leading;
  final Widget? title;
  final bool? alwaysShowTitle;

  final String? flexibleTitleText;
  final String? flexibleSubTitleText;
  final List<Widget>? actions;

  const WuiSliverAppBar({super.key, 
    this.leading, 
    this.controller, 
    this.alwaysShowTitle, 
    this.actions, 
    this.title, 
    this.flexibleTitleText, 
    this.flexibleSubTitleText
  });

  @override
  State<WuiSliverAppBar> createState() => _WuiSliverAppBarState();
}

class _WuiSliverAppBarState extends State<WuiSliverAppBar> {
  
  final double _flexibleContentSpacing = 8.0;
  double _flexibleContentOpacity = 1.0;

  get showTitle {
    return widget.alwaysShowTitle == true ? true : (_flexibleContentOpacity == 0.0);
  }

  double expandedHeight(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return (width < 782 ? MediaQuery.of(context).size.width / 4 * 3 : 300);
  }

  TextStyle flexTitleStyle(BuildContext context) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: 32.0,
      color: Theme.of(context).colorScheme.onSurface
    );
  }

  TextStyle flexSubTitleStyle(BuildContext context) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.onSurface
    );
  }

  double flexibleContentSize(BuildContext context) {
    final TextPainter titlePainter = TextPainter(
      text: TextSpan(
        text: widget.flexibleTitleText ?? "", 
        style: flexTitleStyle(context)
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr
    )..layout(minWidth: 0, maxWidth: double.infinity);

    final TextPainter subPainter = TextPainter(
      text: TextSpan(
        text: widget.flexibleSubTitleText ?? "", 
        style: flexSubTitleStyle(context)
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr
    )..layout(minWidth: 0, maxWidth: double.infinity);

    return titlePainter.size.height + subPainter.size.height + _flexibleContentSpacing;
  }

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(() {
      double flexDis = expandedHeight(context) - flexibleContentSize(context) - 64;
      double scrollPos = widget.controller?.position.pixels ?? 0.0;
      double opacity = (scrollPos > flexDis) ? 0.0 : (1 - (scrollPos / flexDis));
      setState(() {
        _flexibleContentOpacity = opacity;
      });
      // print('scrollPos: ${widget.controller?.position.pixels}, opacity: $opacity');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [...(widget.actions != null ? widget.actions! : []), const SizedBox(width: 4)],
      toolbarHeight: 56,
      collapsedHeight: 56,
      expandedHeight: expandedHeight(context),
      backgroundColor: Theme.of(context).colorScheme.surface,
      pinned: true,
      leading: widget.leading,
      title: AnimatedOpacity(
        opacity: showTitle ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        child: widget.title
      ),
      flexibleSpace: Container(
        color: Theme.of(context).colorScheme.surface,
        padding: const EdgeInsets.only(top: 64),
        child: Opacity(
          opacity: _flexibleContentOpacity,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ...(widget.flexibleTitleText != null ? [DefaultTextStyle(
                  style: flexTitleStyle(context),
                  child: Text(widget.flexibleTitleText!)
                )] : []),
                SizedBox(height: _flexibleContentSpacing),
                ...(widget.flexibleSubTitleText != null ? [DefaultTextStyle(
                  style: flexSubTitleStyle(context),
                  child: Text(widget.flexibleSubTitleText!)
                )] : [])
              ],
            )
          ),
        ),
      ),
    );
  }
}