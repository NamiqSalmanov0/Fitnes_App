import 'package:fitness_app/app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  bool? isShowIntro = sharedPreferences.getBool('intro');
  runApp(MyApp(isShowIntro: isShowIntro));
}
