import 'dart:convert';

import 'package:http/http.dart' as http;

String API_KEY = "hmqFByH6O44G0GglflGJzGr7JjNgwC61";

class HttpRequest {
  Future get(int key) async {
    String url =
        'http://dataservice.accuweather.com/currentconditions/v1/$key?apikey=$API_KEY&details=true';
    var response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }

  Future getLocations(String query) async {
    String url =
        'http://dataservice.accuweather.com/locations/v1/cities/autocomplete?apikey=$API_KEY&q=$query';
    var response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}
