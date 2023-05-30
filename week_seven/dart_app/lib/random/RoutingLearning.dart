import 'package:flutter/material.dart';

class RoutingLearning extends StatefulWidget {
  const RoutingLearning({Key? key}) : super(key: key);

  @override
  State<RoutingLearning> createState() => _RoutingLearningState();
}

class _RoutingLearningState extends State<RoutingLearning> {
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("We are learning Routing"),
          Text(message),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/routing-learning-two')
                    .then((value) => {
                          setState(() {
                            message = value.toString();
                          })
                        });
              },
              child: const Text("Go to secret route")),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go to back"))
        ],
      ))),
    );
  }
}
