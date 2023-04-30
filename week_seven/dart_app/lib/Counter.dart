import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
            child: Text(
              number.toString(),
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () => {
                  setState(() {
                    number++;
                  })
                }));
  }
}
