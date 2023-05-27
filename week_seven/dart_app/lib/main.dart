import 'package:dart_app/Home.dart';
import 'package:dart_app/Index.dart';
import 'package:dart_app/QuotesPage.dart';
import 'package:dart_app/RoutingLearning.dart';
import 'package:dart_app/RoutingLearning2.dart';
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
      routes: {
        '/': (context) => const Index(),
        '/tip-calculator': (context) => const TipCalculator(),
        '/quote-app': (context) => const QuotesPage(),
        '/counter': (context) => Home(
              number: ModalRoute.of(context)?.settings.arguments as int,
            ),
        '/routing-learning': (context) => const RoutingLearning(),
        '/routing-learning-two': (context) => const RoutingLearningTwo()
      },
    );
  }
}
