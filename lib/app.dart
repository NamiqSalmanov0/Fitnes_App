import 'package:flutter/material.dart';

import 'pages/auth/register_page.dart';
import 'pages/intro_page/intro_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isShowIntro});

  final bool? isShowIntro;
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.black),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: (isShowIntro ?? false) ? const RegisterPage() : const IntroPage(),
    );
  }
}
