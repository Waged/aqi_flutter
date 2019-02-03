import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/BiggestCitiesModel.dart';
import 'dart:async' as async;
import 'Repository.dart';
import '../models/TokenSaver.dart';
import '../models/AllLocationsModel.dart';

class LocationApiProvider {
  Client client = new Client();
  final TOKEN_URL = "https://auth.aqi.in/oauth2/token";
  final BIGGEST_CITIES_URL =
      "https://api.aqi.in/WegAPI/api/protected/getBigCities";
  final ALL_LOCATIONS_URL =
      "https://api.aqi.in/WegAPI/api/protected/getalllocations";
  final SEARCH_LOCATION_URL =
      "https://api.aqi.in/WegAPI/api/protected/submitSearch";

  Future<String> fetchToken() async {
    var response = await client.post(TOKEN_URL, body: {
      "username": "Indoor Android API",
      "password": "20dcd1bedf9444d6b0f099f06fd4d901",
      "grant_type": "password",
      "client_id": "36df5fba0b0049a4861b34e6bc90db07"
    });
    final parsedJson = json.decode(response.body);
    TokenModel token = TokenModel.fromJson(parsedJson);
    TokenSaver.setToken(token.accessToken);
    return token.accessToken;
  }

  Future<List<BiggestLocations>> fetchBiggestCities() async {
    Client client1 = new Client();
    String token = await TokenSaver.getToken();
    print("recvd token : " '${token.toString()}');
    var response = await client1.get(BIGGEST_CITIES_URL,
        headers : { "Authorization" : 'Bearer $token' ,
        "Accept": "application/json"});
    final parsedJson = json.decode(response.body);
    return BiggestCitiesModel
        .fromJson(parsedJson)
        .locations;
  }

  Future<List<Locations>> fetchAllLocations() async {
    Client client1 = new Client();
    String token = await TokenSaver.getToken();
    print("recvd token : " '${token.toString()}');
    var response = await client1.get(ALL_LOCATIONS_URL,
        headers : { "Authorization" : 'Bearer $token' ,
          "Accept": "application/json"});
    final parsedJson = json.decode(response.body);
    return AllLocationsModel.fromJson(parsedJson).locations;
  }




}