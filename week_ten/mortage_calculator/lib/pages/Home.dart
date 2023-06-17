import 'package:flutter/material.dart';
import 'package:mortage_calculator/colors/OtherColors.dart';
import 'package:mortage_calculator/model/mortage.dart';

const LOAN_YEARS = ["10", "15", "20", "30"];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController homePriceController = TextEditingController();
  TextEditingController downPaymentController = TextEditingController();
  TextEditingController interestRateController = TextEditingController();
  String selectedYears = LOAN_YEARS[0];

  yearSelected(String year) {
    setState(() {
      selectedYears = year;
    });
  }

  done() {
    Mortgage.mortgage.homePrice = double.parse(homePriceController.text);
    Mortgage.mortgage.downPayment = double.parse(downPaymentController.text);
    Mortgage.mortgage.interestRate = double.parse(interestRateController.text);
    Mortgage.mortgage.lengthOfLoan = double.parse(selectedYears);

    Navigator.pushNamed(context, '/result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calculate Mortgage",
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Home Price", style: Theme.of(context).textTheme.subtitle2),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "",
                    hintText: "Enter the home price",
                    prefixText: "\$ "),
                controller: homePriceController,
              )
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Down Payment Price",
                  style: Theme.of(context).textTheme.subtitle2),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "",
                    hintText: "Enter the payment price",
                    prefixText: "\$ "),
                controller: downPaymentController,
              )
            ]),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Length of Loan",
                      style: Theme.of(context).textTheme.subtitle2),
                  Text("years", style: Theme.of(context).textTheme.subtitle2),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: LOAN_YEARS
                    .map((e) => e == selectedYears
                        ? ElevatedButton(
                            onPressed: () {
                              yearSelected(e);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(LightPurple)),
                            child: Text(e),
                          )
                        : OutlinedButton(
                            style: ButtonStyle(
                                textStyle: MaterialStateTextStyle.resolveWith(
                                    (states) => const TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                backgroundColor:
                                    MaterialStateProperty.all(SilverColor)),
                            onPressed: () {
                              yearSelected(e);
                            },
                            child: Text(e)))
                    .toList(),
              )
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Interest Rate",
                  style: Theme.of(context).textTheme.subtitle2),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "",
                    hintText: "Enter the Interest Rate",
                    suffixText: "%"),
                controller: interestRateController,
              )
            ]),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: done,
                  child: const Text("Calculate"),
                ))
          ],
        ),
      )),
    );
  }
}
