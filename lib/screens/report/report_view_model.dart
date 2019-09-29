import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './report.dart';

abstract class ReportViewModel extends State<Report> {
  bool trashTaken = true;
  static DateTime now = DateTime.now();
  String formattedDate = DateFormat('EEEE, d MMM y').format(now);
}
