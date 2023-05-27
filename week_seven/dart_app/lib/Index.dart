import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://banoqabil.pk/media/logo.png",
            width: 120,
          ),
          Image.asset("assets/signature.png"),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tip-calculator');
              },
              child: const Text("Tip Calculator")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quote-app');
              },
              child: const Text("Quote Page")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/counter', arguments: 4);
              },
              child: const Text("Counter")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/routing-learning');
              },
              child: const Text("Routing Learning")),
        ],
      ))),
    );
  }
}
