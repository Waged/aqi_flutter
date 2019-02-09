import 'package:rxdart/rxdart.dart';
import 'dart:async';
import '../resources/Repository.dart';
import '../models/BiggestCitiesModel.dart';

class BiggestCitiesBloc {
  final _repository = Repository();
  final _topCitiesSubject = BehaviorSubject<List<BiggestLocation>>();
  var _topCities = <BiggestLocation>[];

  //Getters to Streams
  Observable<List<BiggestLocation>> get topCities => _topCitiesSubject.stream;

  BiggestCitiesBloc() {
    _updateTopCities().then((_) {
      _topCitiesSubject.add(_topCities);
    });
  }

  Future<List<BiggestLocation>> _updateTopCities() async {
    return _topCities = await _repository.fetchBiggestLocations();
  }

  dispose() {
    _topCitiesSubject.close();
  }
}
