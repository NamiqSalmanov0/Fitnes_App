import 'package:fitness_app/pages/hom_page/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/icons_buttons.dart';
import '../../utils/extensions/sized_extension.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/register_constants/subtitle_and_titlle.dart';
import '../../utils/constants/register_constants/textfield_constants.dart';
import '../widgets/mytexttfield.dart';
import 'widgets/sign_button.dart';
import 'widgets/text_and_subtitle.dart';
import 'widgets/text_buttons.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  late String _username;
  late String _password;

  @override
  void initState() {
    load();
    super.initState();
  }

  Future<void> load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _username = prefs.getString('username') ?? '';
    _password = prefs.getString('password') ?? '';
    setState(() {});
  }

  final TextEditingController _userloginController = TextEditingController();
  final TextEditingController _passwordLoginController =
      TextEditingController();

  Future<void> login() async {
    if (_username == _userloginController.text &&
        _password == _passwordLoginController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login sucsesfuly'),
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(' Password or username is wrong'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(''),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextAndSubtitle(
                text: SubtitleAndTitlle.r1,
                subtitle: SubtitleAndTitlle.r2,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Mytexttfield(
                  hint: TextfieldConstants.username,
                  controller: _userloginController,
                  visible: false,
                ),
              ),
              20.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Mytexttfield(
                  controller: _passwordLoginController,
                  hint: TextfieldConstants.password,
                  visible: true,
                ),
              ),
              const TextButtons(),
              const SizedBox(height: 15),
              SignButton(
                text: 'Sign in',
                onpressed: () {
                  login();
                },
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
