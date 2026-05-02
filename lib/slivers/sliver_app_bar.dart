import 'package:flutter/material.dart';

class WuiSliverAppBar extends StatefulWidget {

  final ScrollController? controller;

  final Widget? leading;
  final Widget? title;
  final bool? alwaysShowTitle;
  final bool automaticallyImplyLeading;

  final double collapsedHeight;

  final String? flexibleTitleText; // deprecated
  final String? flexibleSubTitleText; // deprecated
  final List<Widget>? actions;

  final PreferredSizeWidget? flexibleSpace;
  final PreferredSizeWidget? bottom;

  const WuiSliverAppBar({super.key, 
    this.leading, 
    this.controller, 
    this.alwaysShowTitle, 
    this.automaticallyImplyLeading = true,

    this.collapsedHeight = 72,

    this.actions, 
    this.title, 
    this.flexibleTitleText, 
    this.flexibleSubTitleText,

    this.flexibleSpace,
    this.bottom
  });

  @override
  State<WuiSliverAppBar> createState() => _WuiSliverAppBarState();
}

class _WuiSliverAppBarState extends State<WuiSliverAppBar> {

  Size? _lastSize;
  
  final double _flexibleContentSpacing = 8.0;
  double _flexibleContentOpacity = 1.0;

  get showTitle {
    return widget.alwaysShowTitle == true ? true : (_flexibleContentOpacity == 0.0);
  }

  double expandedHeight(BuildContext context) {
    double flexHeight = widget.flexibleSpace?.preferredSize.height ?? 0;
    double bottomHeight = widget.bottom?.preferredSize.height ?? 0;
    return kToolbarHeight + flexHeight + bottomHeight;
  }

  double collapsedHeight(BuildContext context) {
    return (widget.collapsedHeight ?? kToolbarHeight) + 8;
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
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final size = MediaQuery.of(context).size;
    if (_lastSize != size) {
      _lastSize = size;
      setState(() {
        // triggere rebuild ketika layout (ukuran/orientasi) berubah
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      actions: widget.actions,
      toolbarHeight: widget.collapsedHeight,
      collapsedHeight: collapsedHeight(context),
      expandedHeight: expandedHeight(context),
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      pinned: true,
      leading: widget.leading,
      title: AnimatedOpacity(
        opacity: showTitle ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        child: widget.title != null ? DefaultTextStyle(
          style: Theme.of(context).textTheme.titleLarge!,
          child: widget.title!
        ) : null
      ),
      flexibleSpace: AnimatedOpacity(
        opacity: _flexibleContentOpacity,
        duration: const Duration(milliseconds: 200),
        child: Padding(
          padding: EdgeInsets.only(
            top: 56, 
            bottom: widget.bottom != null ? widget.bottom!.preferredSize.height : 0
          ),
          child: widget.flexibleSpace,
        ),
      ),
      bottom: widget.bottom,
    );
  }
}