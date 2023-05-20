import 'package:dart_app/TipCalculator/CustomTip.dart';
import 'package:dart_app/TipCalculator/Result.dart';
import 'package:dart_app/model/bill.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  Bill bill = Bill(totalAmount: 0, tipAmount: 10, noOfPeople: 2);

  calculateTip(double percentage) {
    bill.tipAmount = bill.totalAmount * percentage / 100;
    setState(() {});
  }

  openCustomTip(context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        isScrollControlled: true,
        builder: (builder) {
          return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: CustomTip(bill: bill));
        }).then((value) => {setState(() {})});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tipsy"),
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            TextField(
              onChanged: (value) => {
                setState(() {
                  bill.totalAmount = double.parse(value);
                })
              },
              decoration: InputDecoration(labelText: "Enter Bill Amount"),
              keyboardType: TextInputType.number,
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text("Choose Tip"),
            ),
            Wrap(
              spacing: 20,
              children: [
                ElevatedButton(
                    onPressed: () {
                      calculateTip(10);
                    },
                    child: Text("10%")),
                ElevatedButton(
                    onPressed: () {
                      calculateTip(15);
                    },
                    child: Text("15%")),
                ElevatedButton(
                    onPressed: () {
                      calculateTip(20);
                    },
                    child: Text("20%")),
                ElevatedButton(
                    onPressed: () {
                      calculateTip(25);
                    },
                    child: Text("25%")),
                ElevatedButton(
                    onPressed: () {
                      openCustomTip(context);
                    },
                    child: Text("Custom Tip"))
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text("Split"),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () => {
                          setState(() {
                            bill.noOfPeople--;
                          })
                        },
                    icon: const Icon(
                      Icons.remove,
                      size: 24,
                    )),
                Text(bill.noOfPeople.toString()),
                IconButton(
                    onPressed: () => {
                          setState(() {
                            bill.noOfPeople++;
                          })
                        },
                    icon: const Icon(
                      Icons.add,
                      size: 24,
                    )),
              ],
            ),
            ResultTip(
              bill: bill,
            ),
          ]),
        ));
  }
}
