import 'package:ayotrash/screens/check_location/check_location.dart';
import 'package:ayotrash/screens/sign/sign.dart';
import 'package:flutter/material.dart';
import 'package:ayotrash/screens/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  '/Sign': (BuildContext context) => Sign(),
  '/CheckLocation': (BuildContext context) => CheckLocation(),
  '/Home': (BuildContext context) => Home(),
};
