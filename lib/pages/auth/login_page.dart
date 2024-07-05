import 'package:flutter/material.dart';

import '../../utils/constants/register_constants/subtitle_and_titlle.dart';
import '../../utils/constants/register_constants/text_cnstants.dart';
import '../widgets/mytexttfield.dart';
import 'widgets/icons_buttons.dart';
import 'widgets/sign_button.dart';
import 'widgets/text_and_subtitle.dart';
import 'widgets/text_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TextAndSubtitle(
        text: SubtitleAndTitlle.l1,
        subtitle: SubtitleAndTitlle.l2,
      ),
      const SizedBox(
        height: 30,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: const Mytexttfield(
          hint: TextConstants.username,
          visible: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Mytexttfield(
          hint: TextConstants.pasword,
          visible: true,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Mytexttfield(
          hint: TextConstants.passwordconfrim,
          visible: true,
        ),
      ),
      const TextButtons(),
      const SizedBox(
        height: 15,
      ),
      const SignButton(text: 'Sign-up'),
      const SizedBox(
        height: 17,
      ),
      TextButton(
        onPressed: () {},
        child: const Text(
          'Create new account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      const IconsButtons()
    ]);
  }
}
