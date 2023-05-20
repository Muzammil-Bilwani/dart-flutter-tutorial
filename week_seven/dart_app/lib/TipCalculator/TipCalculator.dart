import 'package:dart_app/TipCalculator/CustomTip.dart';
import 'package:dart_app/TipCalculator/Result.dart';
import 'package:dart_app/TipCalculator/TipBox.dart';
import 'package:dart_app/model/bill.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  Bill bill = Bill(totalAmount: 0, tipAmount: 10, noOfPeople: 2);
  List<int> tips = [10, 15, 20, 25];

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
          padding: const EdgeInsets.only(top: 24, right: 40, left: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  onChanged: (value) => {
                    setState(() {
                      bill.totalAmount = double.parse(value);
                    })
                  },
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                      labelText: "Enter Bill Amount",
                      prefixText: "\$ ",
                      prefixStyle: Theme.of(context).textTheme.headline4,
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18)),
                  keyboardType: TextInputType.number,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text("Choose Tip",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 24)),
                ),
                Wrap(
                  spacing: 20,
                  children: [
                    ...tips.map((tip) => TipBox(
                        isSelected:
                            bill.tipAmount == bill.totalAmount * tip / 100,
                        text: '$tip%',
                        onTap: () {
                          calculateTip(tip.toDouble());
                        })),
                    TipBox(
                        isSelected: false,
                        text: "Custom Tip",
                        onTap: () {
                          openCustomTip(context);
                        }),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text("Split",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 24)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () => {
                              setState(() {
                                bill.noOfPeople--;
                              })
                            },
                        icon: Icon(Icons.remove,
                            size: 24, color: Theme.of(context).primaryColor)),
                    Text(bill.noOfPeople.toString(),
                        style: Theme.of(context).textTheme.headline4),
                    IconButton(
                        onPressed: () => {
                              setState(() {
                                bill.noOfPeople++;
                              })
                            },
                        icon: Icon(Icons.add,
                            size: 24, color: Theme.of(context).primaryColor)),
                  ],
                ),
                ResultTip(
                  bill: bill,
                ),
              ]),
        ));
  }
}
