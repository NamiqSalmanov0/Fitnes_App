import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utils/constants/radius_constats.dart';
import '../../utils/extensions/sized_extension.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameControl = TextEditingController();
  final _paswwordController = TextEditingController();
  final _paswordConfirmController = TextEditingController();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _usernameControl,
              // controller: ,
              decoration: const InputDecoration(
                  labelText: 'Username',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderRadius: RadiusConstats.b20,
                  ),
                  prefixIcon: Icon(Icons.accessible_rounded),
                  suffixIcon: Icon(Icons.accessibility_new)),
            ),
            12.h,
            const TextField(),
            12.h,
            const TextField(),
            20.h,
            AnimatedContainer(
              height: 60,
              width: isloading? 120: 200,
              duration: const Duration(milliseconds: 800),
              child: ElevatedButton(
                  onPressed: isloading ? null 
                  :() async {
                    if (isloading) return;
                    isloading = true;
                    setState(() {});
                    await Future.delayed(const Duration(seconds: 3));
                    isloading = false;
                    setState(() {});
                    log(_usernameControl.text);
                  },
                  child: isloading
                      ? const CircularProgressIndicator()
                      : const Text('Register')),
            )
          ],
        ),
      ),
    );
  }
}
