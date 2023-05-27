import 'package:dart_app/Counter.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.number}) : super(key: key);
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
          centerTitle: false,
        ),
        body: Center(
            child: Counter(
          number: number,
        )));
  }
}
