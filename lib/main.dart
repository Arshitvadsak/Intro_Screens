
import 'package:flutter/material.dart';
import 'package:intro_screen/view/screens/Home.dart';
import 'package:intro_screen/view/screens/Intro_Screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? isStart = prefs.getBool('isStart') ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isStart == true) ? '/' : 'intro',
      routes: {
        '/': (context) => const Home(),
        'intro': (context) => const Intro(),
      },
    ),
  );
}