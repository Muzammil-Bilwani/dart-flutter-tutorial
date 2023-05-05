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
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () => {
                  setState(() {
                    number--;
                  })
                },
            icon: const Icon(
              Icons.remove,
              size: 50,
            )),
        Text(number.toString(), style: const TextStyle(fontSize: 90)),
        IconButton(
            onPressed: () => {
                  setState(() {
                    number++;
                  })
                },
            icon: const Icon(
              Icons.add,
              size: 50,
            )),
      ],
    ));
  }
}
