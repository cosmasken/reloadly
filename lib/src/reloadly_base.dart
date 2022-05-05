import 'dart:convert';

import 'package:dio/dio.dart' as dio;

String balanceUrl = 'https://topups.reloadly.com/accounts/balance';
String tokenUrl = 'https://auth.reloadly.com/oauth/token';


class Reloadly {
  Future<String> getToken(String client_id, String client_secret) async {
    var net = dio.Dio();
    var body = {
      "client_id": client_id,
      "client_secret": client_secret,
      "grant_type": "client_credentials",
      "audience": "https://topups.reloadly.com"
    };
    try {
      dio.Response token = await net.post(tokenUrl,
          data: body,
          options: dio.Options(
            headers: {'Content-type': 'application/json'},
          ));
      Map<dynamic, dynamic> tokendata = token.data;
      return tokendata["access_token"];
      // print(_token);

    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  Future<String> getBalance(String tokenString) async {
    var net = dio.Dio();

    try {
      dio.Response token = await net.get(balanceUrl,
          options: dio.Options(
            headers: {
              'Authorization': 'Bearer ' + tokenString,
              'Content-type': 'application/json'
            },
          ));

      print(token.toString());
      Map<String, dynamic> map = json.decode(token.toString());
      //balance.value =map["balance"].toString() ;
      return map["balance"].toString();
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
  Future<String> topUp(String tokenString) async {
    var net = dio.Dio();
    var body = {
      "operatorId": "operatorId",
      "amount": "client_secret",
      "customIdentifier": "client_credentials",
      "recipientPhone": "https://topups.reloadly.com",
      "countryCode": "client_credentials",
      "number": "https://topups.reloadly.com",
      "senderPhone":"senderPhone"

    };
    try {
      dio.Response token = await net.get(balanceUrl,
          options: dio.Options(
            headers: {
              'Authorization': 'Bearer ' + tokenString,
              "Accept": "application/com.reloadly.topups-v1+json",
              'Content-type': 'application/json'
            },
          ));

      print(token.toString());
      Map<String, dynamic> map = json.decode(token.toString());
      //balance.value =map["balance"].toString() ;
      return map["balance"].toString();
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
