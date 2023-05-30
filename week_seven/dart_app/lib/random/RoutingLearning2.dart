import 'package:flutter/material.dart';

class RoutingLearningTwo extends StatelessWidget {
  const RoutingLearningTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("We are learning Routing again"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Back in the Day");
              },
              child: const Text("Go to back In the Day")),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Back in the Night");
              },
              child: const Text("Go to back In the Night"))
        ],
      ))),
    );
  }
}
