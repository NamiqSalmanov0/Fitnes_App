import 'package:fitness_app/utils/constants/splash_constants/text_constants.dart';
import 'package:flutter/material.dart';

class TextWidgets2 extends StatelessWidget {
  const TextWidgets2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      TextConstants.t2,
      style: TextStyle(
          color: Colors.white,
           fontSize: 28,
            fontWeight: FontWeight.bold),
    );
  }
}
