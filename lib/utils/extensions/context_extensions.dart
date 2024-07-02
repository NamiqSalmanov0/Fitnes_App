import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void go(Widget page) => Navigator.push(
      this,
      MaterialPageRoute(
        builder: (_) => page,
      ));

  void goReplace(Widget page) => Navigator.pushReplacement(
      this,
      MaterialPageRoute(
        builder: (_) => page,
      ));

  void goBack() {
    Navigator.pop(this);
  }
}
