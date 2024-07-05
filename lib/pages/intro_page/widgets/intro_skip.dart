import 'package:flutter/material.dart';

class IntroSkip extends StatelessWidget {
  const IntroSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const Text(
          'Skip',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ));
  }
}
