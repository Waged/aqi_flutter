class SearchModel {
  List<AppApiLocations> _appApiLocations;

  SearchModel({List<AppApiLocations> appApiLocations}) {
    this._appApiLocations = appApiLocations;
  }

  List<AppApiLocations> get appApiLocations => _appApiLocations;
  set appApiLocations(List<AppApiLocations> appApiLocations) =>
      _appApiLocations = appApiLocations;

  SearchModel.fromJson(Map<String, dynamic> json) {
    if (json['appApiLocations'] != null) {
      _appApiLocations = new List<AppApiLocations>();
      json['appApiLocations'].forEach((v) {
        _appApiLocations.add(new AppApiLocations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._appApiLocations != null) {
      data['appApiLocations'] =
          this._appApiLocations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AppApiLocations {
  String _locationName;
  int _locationId;
  String _searchType;
  String _cityName;
  String _stateName;
  String _lat;
  String _lon;
  String _distance;
  String _logoUrl;
  String _courtseyText;
  String _courtseyUrl;
  String _timeStamp;
  List<AirComponents> _airComponents;

  AppApiLocations(
      {String locationName,
        int locationId,
        String searchType,
        String cityName,
        String stateName,
        String lat,
        String lon,
        String distance,
        String logoUrl,
        String courtseyText,
        String courtseyUrl,
        String timeStamp,
        List<AirComponents> airComponents}) {
    this._locationName = locationName;
    this._locationId = locationId;
    this._searchType = searchType;
    this._cityName = cityName;
    this._stateName = stateName;
    this._lat = lat;
    this._lon = lon;
    this._distance = distance;
    this._logoUrl = logoUrl;
    this._courtseyText = courtseyText;
    this._courtseyUrl = courtseyUrl;
    this._timeStamp = timeStamp;
    this._airComponents = airComponents;
  }

  String get locationName => _locationName;
  set locationName(String locationName) => _locationName = locationName;
  int get locationId => _locationId;
  set locationId(int locationId) => _locationId = locationId;
  String get searchType => _searchType;
  set searchType(String searchType) => _searchType = searchType;
  String get cityName => _cityName;
  set cityName(String cityName) => _cityName = cityName;
  String get stateName => _stateName;
  set stateName(String stateName) => _stateName = stateName;
  String get lat => _lat;
  set lat(String lat) => _lat = lat;
  String get lon => _lon;
  set lon(String lon) => _lon = lon;
  String get distance => _distance;
  set distance(String distance) => _distance = distance;
  String get logoUrl => _logoUrl;
  set logoUrl(String logoUrl) => _logoUrl = logoUrl;
  String get courtseyText => _courtseyText;
  set courtseyText(String courtseyText) => _courtseyText = courtseyText;
  String get courtseyUrl => _courtseyUrl;
  set courtseyUrl(String courtseyUrl) => _courtseyUrl = courtseyUrl;
  String get timeStamp => _timeStamp;
  set timeStamp(String timeStamp) => _timeStamp = timeStamp;
  List<AirComponents> get airComponents => _airComponents;
  set airComponents(List<AirComponents> airComponents) =>
      _airComponents = airComponents;

  AppApiLocations.fromJson(Map<String, dynamic> json) {
    _locationName = json['locationName'];
    _locationId = json['locationId'];
    _searchType = json['searchType'];
    _cityName = json['cityName'];
    _stateName = json['stateName'];
    _lat = json['lat'];
    _lon = json['lon'];
    _distance = json['distance'];
    _logoUrl = json['logoUrl'];
    _courtseyText = json['courtseyText'];
    _courtseyUrl = json['courtseyUrl'];
    _timeStamp = json['timeStamp'];
    if (json['airComponents'] != null) {
      _airComponents = new List<AirComponents>();
      json['airComponents'].forEach((v) {
        _airComponents.add(new AirComponents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['locationName'] = this._locationName;
    data['locationId'] = this._locationId;
    data['searchType'] = this._searchType;
    data['cityName'] = this._cityName;
    data['stateName'] = this._stateName;
    data['lat'] = this._lat;
    data['lon'] = this._lon;
    data['distance'] = this._distance;
    data['logoUrl'] = this._logoUrl;
    data['courtseyText'] = this._courtseyText;
    data['courtseyUrl'] = this._courtseyUrl;
    data['timeStamp'] = this._timeStamp;
    if (this._airComponents != null) {
      data['airComponents'] =
          this._airComponents.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AirComponents {
  String _sensorName;
  String _sensorData;
  String _sensorUnit;
  String _senDevId;
  String _iconUrl;

  AirComponents(
      {String sensorName,
        String sensorData,
        String sensorUnit,
        String senDevId,
        String iconUrl}) {
    this._sensorName = sensorName;
    this._sensorData = sensorData;
    this._sensorUnit = sensorUnit;
    this._senDevId = senDevId;
    this._iconUrl = iconUrl;
  }

  String get sensorName => _sensorName;
  set sensorName(String sensorName) => _sensorName = sensorName;
  String get sensorData => _sensorData;
  set sensorData(String sensorData) => _sensorData = sensorData;
  String get sensorUnit => _sensorUnit;
  set sensorUnit(String sensorUnit) => _sensorUnit = sensorUnit;
  String get senDevId => _senDevId;
  set senDevId(String senDevId) => _senDevId = senDevId;
  String get iconUrl => _iconUrl;
  set iconUrl(String iconUrl) => _iconUrl = iconUrl;

  AirComponents.fromJson(Map<String, dynamic> json) {
    _sensorName = json['sensorName'];
    _sensorData = json['sensorData'];
    _sensorUnit = json['sensorUnit'];
    _senDevId = json['senDevId'];
    _iconUrl = json['iconUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sensorName'] = this._sensorName;
    data['sensorData'] = this._sensorData;
    data['sensorUnit'] = this._sensorUnit;
    data['senDevId'] = this._senDevId;
    data['iconUrl'] = this._iconUrl;
    return data;
  }
}

