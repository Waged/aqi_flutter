class BiggestCitiesModel {
  List<Locations> _locations;

  BiggestCitiesModel({List<Locations> locations}) {
    this._locations = locations;
  }

  List<Locations> get locations => _locations;
  set locations(List<Locations> locations) => _locations = locations;

  BiggestCitiesModel.fromJson(Map<String, dynamic> json) {
    if (json['Locations'] != null) {
      _locations = new List<Locations>();
      json['Locations'].forEach((v) {
        _locations.add(new Locations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._locations != null) {
      data['Locations'] = this._locations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Locations {
  String _locationName;
  int _locationId;
  String _searchType;
  String _stateName;
  String _countryName;
  String _timeStamp;
  String _logoUrl;
  Null _courtseyText;
  Null _courtseyUrl;
  List<AirComponents> _airComponents;

  Locations(
      {String locationName,
        int locationId,
        String searchType,
        String stateName,
        String countryName,
        String timeStamp,
        String logoUrl,
        String courtseyText,
        String courtseyUrl,
        List<AirComponents> airComponents}) {
    this._locationName = locationName;
    this._locationId = locationId;
    this._searchType = searchType;
    this._stateName = stateName;
    this._countryName = countryName;
    this._timeStamp = timeStamp;
    this._logoUrl = logoUrl;
    this._courtseyText = courtseyText;
    this._courtseyUrl = courtseyUrl;
    this._airComponents = airComponents;
  }

  String get locationName => _locationName;
  set locationName(String locationName) => _locationName = locationName;
  int get locationId => _locationId;
  set locationId(int locationId) => _locationId = locationId;
  String get searchType => _searchType;
  set searchType(String searchType) => _searchType = searchType;
  String get stateName => _stateName;
  set stateName(String stateName) => _stateName = stateName;
  String get countryName => _countryName;
  set countryName(String countryName) => _countryName = countryName;
  String get timeStamp => _timeStamp;
  set timeStamp(String timeStamp) => _timeStamp = timeStamp;
  String get logoUrl => _logoUrl;
  set logoUrl(String logoUrl) => _logoUrl = logoUrl;
  String get courtseyText => _courtseyText;
  set courtseyText(Null courtseyText) => _courtseyText = courtseyText;
  String get courtseyUrl => _courtseyUrl;
  set courtseyUrl(Null courtseyUrl) => _courtseyUrl = courtseyUrl;
  List<AirComponents> get airComponents => _airComponents;
  set airComponents(List<AirComponents> airComponents) =>
      _airComponents = airComponents;

  Locations.fromJson(Map<String, dynamic> json) {
    _locationName = json['locationName'];
    _locationId = json['locationId'];
    _searchType = json['searchType'];
    _stateName = json['stateName'];
    _countryName = json['countryName'];
    _timeStamp = json['timeStamp'];
    _logoUrl = json['logoUrl'];
    _courtseyText = json['courtseyText'];
    _courtseyUrl = json['courtseyUrl'];
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
    data['stateName'] = this._stateName;
    data['countryName'] = this._countryName;
    data['timeStamp'] = this._timeStamp;
    data['logoUrl'] = this._logoUrl;
    data['courtseyText'] = this._courtseyText;
    data['courtseyUrl'] = this._courtseyUrl;
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

  AirComponents(
      {String sensorName,
        String sensorData,
        String sensorUnit,
        String senDevId}) {
    this._sensorName = sensorName;
    this._sensorData = sensorData;
    this._sensorUnit = sensorUnit;
    this._senDevId = senDevId;
  }

  String get sensorName => _sensorName;
  set sensorName(String sensorName) => _sensorName = sensorName;
  String get sensorData => _sensorData;
  set sensorData(String sensorData) => _sensorData = sensorData;
  String get sensorUnit => _sensorUnit;
  set sensorUnit(String sensorUnit) => _sensorUnit = sensorUnit;
  String get senDevId => _senDevId;
  set senDevId(String senDevId) => _senDevId = senDevId;

  AirComponents.fromJson(Map<String, dynamic> json) {
    _sensorName = json['sensorName'];
    _sensorData = json['sensorData'];
    _sensorUnit = json['sensorUnit'];
    _senDevId = json['senDevId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sensorName'] = this._sensorName;
    data['sensorData'] = this._sensorData;
    data['sensorUnit'] = this._sensorUnit;
    data['senDevId'] = this._senDevId;
    return data;
  }
}

