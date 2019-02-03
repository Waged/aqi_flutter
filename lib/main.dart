import 'package:flutter/material.dart';
import 'App.dart';
import 'resources/LocationApiProvider.dart';
import 'models/BiggestCitiesModel.dart';
import 'dart:async'as async;


main() {
  runApp(App());
  var provider = LocationApiProvider();
  var x = provider.fetchToken();
  print(x.toString());
  var y = provider.fetchBiggestCities();
  y.then((list){
    print('location name ${list[0].locationName}');
  });

  var z = provider.fetchAllLocations();
  z.then((list){
    print('location name ${list[0].locationName}');
  });



}
