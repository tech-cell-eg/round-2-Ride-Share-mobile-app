import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void navigateTo(String routeName) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false);
  }
}
