import '../../auth/register_page.dart';
import '../../../utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroStartedbutton extends StatelessWidget {
  const IntroStartedbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          final sharedPreferences = await SharedPreferences.getInstance();
          await sharedPreferences.setBool('intro', true);

          context.goReplace(const RegisterPage());
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(160, 50),
        ),
        child: const Text('Get Started'));
  }
}
