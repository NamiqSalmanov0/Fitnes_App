import 'package:flutter/material.dart';

import 'pages/intro_page/intro_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(color: Colors.black),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
    );
  }
}
