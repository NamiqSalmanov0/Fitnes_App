import 'package:flutter/material.dart';

class IntroStartedbutton extends StatelessWidget {
  const IntroStartedbutton({super.key});

  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: Size(160, 50),
        ),
        child: Text('Get Started'));
  }
}
