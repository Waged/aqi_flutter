import 'package:flutter/material.dart';
import 'App.dart';
import 'resources/LocationApiProvider.dart';
import 'models/BiggestCitiesModel.dart';


main() {
  runApp(App());
  //LocationApiProvider provider ;
  var provider = LocationApiProvider();
  var x = provider.fetchToken();
  print(x.toString());
  Future<List<Locations>> y = provider.fetchBiggestCities();
  y.then((list){
//    String data = list[0].locationName;
    print('location name $list');
  });



}
