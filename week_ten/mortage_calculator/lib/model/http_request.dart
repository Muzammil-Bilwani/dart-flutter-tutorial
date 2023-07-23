import 'dart:convert';

import 'package:http/http.dart' as http;

const String BASE_URL = "https://bilwani-weather-api.fly.dev/";

class HttpRequest {
  Future getWeather(location) async {
    String url = '${BASE_URL}weather/$location';
    var response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }

  Future getLocations() async {
    String url = '${BASE_URL}locations';
    var response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}
