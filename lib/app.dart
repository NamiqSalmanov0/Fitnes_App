import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/auth/login_page2.dart';
import 'pages/auth/register_page3.dart';
import 'pages/intro_page/intro_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool islogged = false;
  @override
  void initState()  {
    super.initState();
    _checkStatus();
  }

  Future<void> _checkStatus() async {
    SharedPreferences getpref = await SharedPreferences.getInstance();
    bool logged = getpref.getBool('register') ?? false;
    
    setState(() {
      islogged = logged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: islogged ? const RegisterPage3() : const IntroPage(),
    );
  }
}
