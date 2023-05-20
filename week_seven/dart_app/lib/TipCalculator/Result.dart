import 'package:dart_app/model/bill.dart';
import 'package:flutter/material.dart';

class ResultTip extends StatelessWidget {
  const ResultTip({Key? key, required this.bill}) : super(key: key);
  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("Total Amount"),
        Text("\$" + bill.getAmountPerPerson()),
        Text("Tip Amount Per Person"),
        Text(bill.getTipAmountPerPerson()),
        Text("Bill Amount Per Person"),
        Text(bill.getBillAmountPerPerson()),
      ]),
    );
  }
}
