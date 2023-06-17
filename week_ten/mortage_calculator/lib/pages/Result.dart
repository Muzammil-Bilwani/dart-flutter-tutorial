import 'package:flutter/material.dart';
import 'package:mortage_calculator/model/mortage.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ElevatedButton(
                child: Text(Mortgage.mortgage.downPayment.toString()),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                })));
  }
}
