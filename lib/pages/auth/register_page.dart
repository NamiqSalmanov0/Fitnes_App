import 'package:fitness_app/utils/extensions/sized_extension.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const TextField(),
          12.h,
          const TextField(),
          12.h,
          const TextField(),
          20.h,
          ElevatedButton(onPressed: () {},
           child: const Text('Register')
           )
        ],
      ),
    );
  }
}
