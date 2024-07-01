import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../intro_page/intro_page.dart';
import 'widgets/decorated_box.dart';
import 'widgets/text-widgets2.dart';
import 'widgets/text_widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const IntroPage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Fitness APP',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: FadeInLeftBig(
        child: const Column(
          children: [
            DecorWidget(),
            SizedBox(height: 10),
            TextWidgets2(),
            SizedBox(height: 10),
            TextWidgets()
          ],
        ),
      ),
    );
  }
}
