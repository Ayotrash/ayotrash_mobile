import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './automatic_location.dart';

abstract class AutomaticLocationViewModel extends State<AutomaticLocation> {
  Completer<GoogleMapController> controller = Completer();
  GoogleMapController kcontroller;
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(-6.175392, 106.827153),
    zoom: 14.4746,
  );
  Marker marker;
  bool loading = true;
  bool hide = false;

  Future<void> checkLocation() async {
    kcontroller = await controller.future;
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final MarkerId _markerId = MarkerId('1');

    setState(() {
      marker = Marker(
          markerId: _markerId,
          position: LatLng(position.latitude, position.longitude),
          anchor: Offset(0.5, 1.5),
          icon: BitmapDescriptor.fromAsset("assets/pointer.png"));
      markers[_markerId] = marker;
    });

    CameraPosition goPosition = CameraPosition(
        bearing: 0,
        target: LatLng(position.latitude, position.longitude),
        // tilt: 59.440717697143555,
        zoom: 18.151926040649414);

    kcontroller.animateCamera(CameraUpdate.newCameraPosition(goPosition));
  }

  void hideSeek() {
    setState(() {
      hide = !hide;
    });
  }

  void loader() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        loading = !loading;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loader();
      checkLocation();
    });
  }
}
