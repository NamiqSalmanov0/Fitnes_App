import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/constants/register_constants/subtitle_and_titlle.dart';
import '../../utils/constants/register_constants/textfield_constants.dart';
import '../widgets/mytexttfield.dart';
import 'login_page2.dart';
import 'widgets/icons_buttons.dart';
import 'widgets/sign_button.dart';
import 'widgets/text_and_subtitle.dart';

class RegisterPage3 extends StatefulWidget {
  const RegisterPage3({super.key});

  @override
  State<RegisterPage3> createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  void save() async {
    log('Save button clicked');
    if (_passwordController.text != _confirmController.text) {
      log('Passwords are not matches');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password do not match'),
        ),
      );
      return;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', _usernameController.text);
    await prefs.setString('password', _passwordController.text);
    log('All datas saved');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Sucsesful Register'),
      ),
    );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage2(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextAndSubtitle(
                text: SubtitleAndTitlle.l1,
                subtitle: SubtitleAndTitlle.l2,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                child: Mytexttfield(
                  controller: _usernameController,
                  hint: TextfieldConstants.username,
                  visible: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                child: Mytexttfield(
                  controller: _passwordController,
                  hint: TextfieldConstants.password,
                  visible: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                child: Mytexttfield(
                  controller: _confirmController,
                  hint: TextfieldConstants.passwordcoonfirm,
                  visible: true,
                ),
              ),
              const SizedBox(height: 20),
              SignButton(
                onpressed: () => save(),
                text: 'Sign up',
              ),
              const SizedBox(
                height: 35,
              ),
              const IconsButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
