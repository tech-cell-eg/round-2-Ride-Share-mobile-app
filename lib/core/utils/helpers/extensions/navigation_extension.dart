import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext{

  Future<void> pushNamed(routeName,{arguments}) async {
    await Navigator.pushNamed(this, routeName,arguments: arguments);
  }

  Future<void> pushReplacementNamed(routeName,{arguments}) async {
    await Navigator.pushReplacementNamed(this, routeName,arguments: arguments);
  }

  Future<void> pushNamedAndRemoveUntil(routeName,{arguments}) async {
    await Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,arguments: arguments);
  }

  void pop() => Navigator.pop(this);
  
}