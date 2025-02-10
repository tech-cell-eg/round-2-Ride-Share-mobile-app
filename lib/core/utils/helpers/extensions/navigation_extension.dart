import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {

  void push(Widget screen) => Navigator.push(
        this,
        MaterialPageRoute(builder: (context) => screen),
      );

  void pushReplacement(Widget screen) => Navigator.pushReplacement(
        this,
        MaterialPageRoute(builder: (context) => screen),
      );

  void pushAndRemoveAll(Widget screen) => Navigator.pushAndRemoveUntil(
        this,
        MaterialPageRoute(builder: (context) => screen),
        (route) => false,
      );

  void navigateTo(String routeName) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false);
  }

  Future<void> pushNamed(routeName, {arguments}) async {
    await Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<void> pushReplacementNamed(routeName, {arguments}) async {
    await Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  Future<void> pushNamedAndRemoveUntil(routeName, {arguments}) async {
    await Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }


  void pop() => Navigator.pop(this);
}
