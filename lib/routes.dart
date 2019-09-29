import 'package:ayotrash/screens/automatic_location/automatic_location.dart';
import 'package:ayotrash/screens/check_location/check_location.dart';
import 'package:ayotrash/screens/fill_account/fill_account.dart';
import 'package:ayotrash/screens/profile/profile.dart';
import 'package:ayotrash/screens/report/report.dart';
import 'package:ayotrash/screens/reward/reward.dart';
import 'package:ayotrash/screens/sign/sign.dart';
import 'package:flutter/material.dart';
import 'package:ayotrash/screens/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  '/Home': (BuildContext context) => Home(),
  '/Sign': (BuildContext context) => Sign(),
  '/Profile': (BuildContext context) => Profile(),
  '/CheckLocation': (BuildContext context) => CheckLocation(),
  '/AutoLocation': (BuildContext context) => AutomaticLocation(),
  '/FillAccount': (BuildContext context) => FillAccount(),
  '/Report': (BuildContext context) => Report(),
  '/Reward': (BuildContext context) => Reward(),
};
