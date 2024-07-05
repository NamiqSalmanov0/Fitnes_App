import 'package:fitness_app/pages/auth/widgets/icons_buttons.dart';
import 'package:fitness_app/utils/extensions/sized_extension.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/register_constants/subtitle_and_titlle.dart';
import '../../utils/constants/register_constants/textfield_constants.dart';
import '../widgets/mytexttfield.dart';
import 'widgets/sign_button.dart';
import 'widgets/text_and_subtitle.dart';
import 'widgets/text_buttons.dart';

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({super.key});

  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(''),
      ),
      body:  SafeArea(
        child: Column(
          children: [
            const TextAndSubtitle(
              text: SubtitleAndTitlle.r1,
              subtitle: SubtitleAndTitlle.r2,
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Mytexttfield(
                hint: TextfieldConstants.username,
                visible: false,
              ),
            ),
            20.h,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Mytexttfield(
                hint: TextfieldConstants.password,
                visible: true,
              ),
            ),
            const TextButtons(),
            const SizedBox(
              height: 15,
            ),
            const SignButton(
              text: 'Sign in',
            ),
            const SizedBox(height: 17,),
            TextButton(
              onPressed: () {},
              child: const Text('Create new account',
              style:TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ) ,),
            ),
            const IconsButtons()
          ],
        ),
      ),
    );
  }
}
