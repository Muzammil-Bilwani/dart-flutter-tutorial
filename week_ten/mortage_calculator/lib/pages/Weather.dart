import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mortage_calculator/model/http_request.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  bool isLoading = false;
  List<String> locations = <String>[];
  List<dynamic> locationsList = <dynamic>[];
  int key = 0;

  @override
  void initState() {
    super.initState();
  }

  void callAPI(String val) async {
    var result = await HttpRequest().getLocations(val);
    print(result.map((e) => e).toList());
    List<String> response = result.map((e) => e['LocalizedName']).toList();
    print(response);
    setState(() {
      locationsList = result.map((e) => e).toList();
      locations = response;
    });
    // setState(() {
    //   isLoading = false;
    // });
  }

  void getWeather() async {
    setState(() {
      isLoading = true;
    });
    var result = await HttpRequest().get(key);
    print(result);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(12),
                child: isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: [
                          Autocomplete<String>(
                            fieldViewBuilder: (context, textEditingController,
                                    focusNode, onFieldSubmitted) =>
                                TextField(
                              controller: textEditingController,
                              onChanged: (val) =>
                                  {if (val.length > 5) callAPI(val)},
                            ),
                            optionsBuilder:
                                (TextEditingValue textEditingValue) {
                              if (textEditingValue.text == '') {
                                return const Iterable<String>.empty();
                              }
                              return locations.where((String option) =>
                                  option.contains(
                                      textEditingValue.text.toLowerCase()));
                            },
                            onSelected: (String selection) {
                              print('You just selected $selection');
                              int key = locationsList.firstWhere((element) =>
                                  element['LocalizedName'] == selection);
                              setState(() {
                                key = key;
                              });
                            },
                          ),
                        ],
                      ))));
  }
}
