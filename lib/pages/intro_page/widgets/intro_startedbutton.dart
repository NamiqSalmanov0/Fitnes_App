import 'package:fitness_app/pages/auth/register_page.dart';
import 'package:fitness_app/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../auth/register_page3.dart';

class IntroStartedbutton extends StatelessWidget {
  const IntroStartedbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          final sharedPreferences = await SharedPreferences.getInstance();
          await sharedPreferences.setBool('register', true);
          // ignore: use_build_context_synchronously
          context.goReplace(const RegisterPage3());
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(160, 50),
        ),
        child: const Text('Get Started'));
  }
}
