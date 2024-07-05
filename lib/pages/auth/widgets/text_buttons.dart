import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, 
    child: const Text('Forgot your password?',
    style: TextStyle(
      color: Colors.blue,
      fontSize: 15,
      fontWeight: FontWeight.normal
    ),));
  }
}
