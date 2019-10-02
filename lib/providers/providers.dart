import 'package:dio/dio.dart';
import 'package:ayotrash/config/config.dart';

class Providers {
  static Future register({
    String firstname,
    String lastname,
    String email,
    String phonenumber,
    String password,
    String photoUrl,
    String bod,
    String gender,
    List place,
    List creditCards,
    Map deviceInfo,
    Map setting,
  }) async {
    return Dio().post('$HOST/register', data: {
      "firstname": firstname,
      "lastname": lastname,
      "email": email,
      "phonenumber": phonenumber,
      "password": password,
      "photoUrl": photoUrl,
      "bod": bod,
      "gender": gender,
      "place": place,
      "creditCards": creditCards,
      "deviceInfo": deviceInfo,
      "setting": setting,
    });
  }
}
