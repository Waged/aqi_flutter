import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/BiggestCitiesModel.dart';
import 'dart:async' as async;
import 'Repository.dart';
import '../models/TokenSaver.dart';

class LocationApiProvider {
    Client client = new Client();
  final _token_url = "https://auth.aqi.in/oauth2/token";
  final _biggest_location_url =
      "https://api.aqi.in/WegAPI/api/protected/getBigCities";
  final _all_locations_url =
      "https://api.aqi.in/WegAPI/api/protected/getalllocations";
  final _search_location_url =
      "https://api.aqi.in/WegAPI/api/protected/submitSearch";

  Future<String> fetchToken() async {
    client.post(_token_url, body: {
      "username": "Indoor Android API",
      "password": "20dcd1bedf9444d6b0f099f06fd4d901",
      "grant_type": "password",
      "client_id": "36df5fba0b0049a4861b34e6bc90db07"
    }).then((response) {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final parsedJson = json.decode(response.body);
      TokenModel token = TokenModel.fromJson(parsedJson);
      print("token : ${token.accessToken}");
      TokenSaver.setToken(token.accessToken);
      return token.accessToken;
    });
  }

  Future<List<Locations>> fetchBiggestCities() async {
    Future<String> token = TokenSaver.getToken();
    print("recvd token : " '${token.toString()}');
     client.get(_biggest_location_url, headers: {
      "Authorization": "Bearer " + token.toString()
    }).then((response) {
      final parsedJson = json.decode(response.body);
      BiggestCitiesModel biggestCitiesModel =
          BiggestCitiesModel.fromJson(parsedJson);
      return biggestCitiesModel.locations.toList();
    });
  }
}
