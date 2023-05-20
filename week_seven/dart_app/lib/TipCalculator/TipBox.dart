import 'package:flutter/material.dart';

class TipBox extends StatelessWidget {
  const TipBox(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.isSelected})
      : super(key: key);
  final String text;
  final Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ElevatedButton(
            onPressed: onTap,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            )),
            child: Text(text),
          )
        : OutlinedButton(
            onPressed: onTap,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            )),
            child: Text(text),
          );
  }
}
