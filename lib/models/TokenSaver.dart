import 'dart:async'as async;
import 'package:shared_preferences/shared_preferences.dart';


class TokenSaver{
  static setToken(String tokenKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("TOKEN_KEY", tokenKey);
  }

  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("TOKEN_KEY");
  }


}



class TokenModel {
  String _accessToken;
  String _tokenType;
  int _expiresIn;

  TokenModel({String accessToken, String tokenType, int expiresIn}) {
    this._accessToken = accessToken;
    this._tokenType = tokenType;
    this._expiresIn = expiresIn;
  }

  String get accessToken => _accessToken;
  set accessToken(String accessToken) => _accessToken = accessToken;
  String get tokenType => _tokenType;
  set tokenType(String tokenType) => _tokenType = tokenType;
  int get expiresIn => _expiresIn;
  set expiresIn(int expiresIn) => _expiresIn = expiresIn;

  TokenModel.fromJson(Map<String, dynamic> json) {
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this._accessToken;
    data['token_type'] = this._tokenType;
    data['expires_in'] = this._expiresIn;
    return data;
  }
}

