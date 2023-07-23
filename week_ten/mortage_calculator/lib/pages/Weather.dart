import 'package:flutter/material.dart';
import 'package:mortage_calculator/model/http_request.dart';
import 'package:mortage_calculator/model/weather.dart';

const WeatherCondition = {
  "SUNNY": "Sunny",
  "CLOUDY": "Cloudy",
  "RAINY": "Rainy",
  "SNOWY": "Snowy"
};

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  bool isLoading = false;
  List<String> locations = <String>[];
  int selectedCity = 0;
  int key = 0;
  WeatherModel weather = WeatherModel("", "", 0, 0);

  @override
  void initState() {
    super.initState();
    getLocations();
  }

  void getLocations() async {
    var result = await HttpRequest().getLocations();
    setState(() {
      locations = result["data"].cast<String>();
      isLoading = false;
    });
  }

  void getWeather() async {
    setState(() {
      isLoading = true;
    });
    var result = await HttpRequest().getWeather(key);
    print(result);
    weather = WeatherModel(result["condition"], result["description"],
        result["humidity"], result["temperature"]);
    setState(() {
      isLoading = false;
    });
  }

  String getImage() {
    if (weather.condition == WeatherCondition["SUNNY"]) {
      return "assets/sun.png";
    } else if (weather.condition == WeatherCondition["CLOUDY"]) {
      return "assets/cloud.png";
    } else if (weather.condition == WeatherCondition["RAINY"]) {
      return "assets/rain.png";
    } else if (weather.condition == WeatherCondition["SNOWY"]) {
      return "assets/snow.png";
    } else {
      return "";
    }
  }

  void changeCity() {
    setState(() {
      if (selectedCity == locations.length - 1) {
        selectedCity = 0;
      } else {
        selectedCity++;
      }
    });
    getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF151645),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(12),
                child: isLoading && locations.isNotEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Center(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(locations[selectedCity],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 36)),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            getImage(),
                            width: 240,
                            height: 240,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(weather.description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white24, fontSize: 30)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("${weather.temperature}°C",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 44)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("${weather.humidity}% Humidity",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24)),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: changeCity,
                              child: const Text("Next City"))
                        ],
                      )))));
  }
}
