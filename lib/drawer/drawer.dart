import 'package:flutter/material.dart';
import '../drawer/drawer_button.dart';
import '../drawer/drawer_header.dart';
import '../drawer/drawer_model.dart';

class WuiDrawer extends StatefulWidget {

  final Widget? title;
  final Widget? subTitle;

  final List<Widget>? primaryItems;
  final List<Widget>? secondaryItems;

  const WuiDrawer({
    super.key, 
    this.title, 
    this.subTitle, 
    this.primaryItems, 
    this.secondaryItems
  });

  @override
  State<WuiDrawer> createState() => _WuiDrawerState();
}

class _WuiDrawerState extends State<WuiDrawer> {

  final WuiDrawerModel _model = WuiDrawerModel();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((Duration duration) {
      int primaryIndex = (widget.primaryItems ?? []).indexWhere((Widget w) {
        if(w is WuiDrawerButton) return w.id == _model.activeId;
        return false;
      });
      if(primaryIndex > -1) WuiDrawerModel().setMode(WuiDrawerMode.primary);

      int secondaryIndex = (widget.secondaryItems ?? []).indexWhere((Widget w) {
        if(w is WuiDrawerButton) return w.id == _model.activeId;
        return false;
      });
      if(secondaryIndex > -1) WuiDrawerModel().setMode(WuiDrawerMode.secondary);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _model,
      builder: (BuildContext context, Widget? child) {
        return Drawer(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  WuiDrawerHeader(
                    mode: _model.mode,
                    title: widget.title,
                    subTitle: widget.subTitle,
                  ),
                  ...((_model.mode == WuiDrawerMode.primary ? widget.primaryItems : widget.secondaryItems) ?? [])
                ]
              ),
            ),
          )
        );
      }
    );
  }
}