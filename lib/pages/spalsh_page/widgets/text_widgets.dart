import 'package:fitness_app/utils/constants/splash_constants/text_constants.dart';
import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      SplashTextConstants.t1,
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
    );
  }
}
