import 'package:flutter/material.dart';

class LionButton extends StatefulWidget {
  const LionButton({Key? key}) : super(key: key);

  @override
  State<LionButton> createState() => _LionButtonState();
}

class _LionButtonState extends State<LionButton> {
  double lionHeight = 20;
  double lionWidth = 20;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {lionHeight = 100, lionWidth = 100})
      },
      child: Image.asset(
        'assets/lion_king.png',
        width: lionWidth,
        height: lionHeight,
      ),
    );
  }
}
