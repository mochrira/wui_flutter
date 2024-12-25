import 'package:flutter/material.dart';

enum WuiDrawerMode {primary, secondary}

class WuiDrawerModel extends ChangeNotifier {

  static WuiDrawerModel instance = WuiDrawerModel._internal();
  WuiDrawerModel._internal();
  
  factory WuiDrawerModel() {
    return instance;
  }

  static WuiDrawerMode defaultMode = WuiDrawerMode.primary;
  WuiDrawerMode _mode = defaultMode;
  get mode => _mode;

  void setMode(WuiDrawerMode mode) {
    _mode = mode;
    notifyListeners();
  }

  static String defaultActiveId = '';
  String _activeId = defaultActiveId;
  get activeId => _activeId;

  void setActiveId(String id) {
    _activeId = id;
    notifyListeners();
  }

}