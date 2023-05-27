import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Counter extends StatefulWidget {
  Counter({Key? key, required this.number}) : super(key: key);
  final int number;
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int number = 1;

  @override
  void initState() {
    number = widget.number;
    super.initState();
  }

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
