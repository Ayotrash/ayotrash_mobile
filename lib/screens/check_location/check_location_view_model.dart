import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import './check_location.dart';

abstract class CheckLocationViewModel extends State<CheckLocation> {
  Future checkManually() async {
    LocationResult _result = await LocationPicker.pickLocation(
        context, 'AIzaSyBP9z4LaL8c5Ve9SXQvA_2wwX2mfbrHa-k');
    print(_result);
  }
}
