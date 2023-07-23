import 'package:flutter/material.dart';
import 'package:mortage_calculator/colors/OtherColors.dart';
import 'package:mortage_calculator/colors/Purple.dart';
import 'package:mortage_calculator/pages/Home.dart';
import 'package:mortage_calculator/pages/Quacks.dart';
import 'package:mortage_calculator/pages/Result.dart';
import 'package:mortage_calculator/pages/Weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mortgage Calculator',
      theme: ThemeData(
        primarySwatch: purpleColor,
        scaffoldBackgroundColor: const Color(0xFFf1f3fa),
        inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: LightPurple),
                borderRadius: BorderRadius.circular(20)),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: LightPurple),
                borderRadius: BorderRadius.circular(20))),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateTextStyle.resolveWith(
                    (states) => const TextStyle(fontSize: 20)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                padding: MaterialStateProperty.all(const EdgeInsets.all(16)))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateTextStyle.resolveWith((states) =>
                    const TextStyle(color: Colors.white, fontSize: 20)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                padding: MaterialStateProperty.all(const EdgeInsets.all(16)))),
        textTheme: const TextTheme(
            subtitle2: TextStyle(color: GreyColor, fontSize: 14),
            headline1: TextStyle(
                color: TextColor, fontSize: 40, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                color: TextColor, fontSize: 32, fontWeight: FontWeight.bold),
            subtitle1: TextStyle(
              color: TextColor,
              fontSize: 16,
            )),
      ),
      routes: {
        '/': (context) => const Weather(),
        '/quacks': (context) => const Quacks(),
        '/weather': (context) => const Weather(),
        '/home': (context) => const Home(),
        '/result': (context) => const Result(),
      },
    );
  }
}
