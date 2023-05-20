import 'package:dart_app/Home.dart';
import 'package:dart_app/QuotesPage.dart';
import 'package:dart_app/ScaffoldLearn.dart';
import 'package:dart_app/TipCalculator/TipCalculator.dart';
import 'package:dart_app/colors/TipsyColor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: tipsyColor,
          textTheme: const TextTheme(
            subtitle1: TextStyle(color: Color(0xFFa2a5a4)),
            headline4: TextStyle(
                color: Color(0xFF168954), fontWeight: FontWeight.bold),
          )),
      home: const TipCalculator(),
    );
  }
}
