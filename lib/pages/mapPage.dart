import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {
  return MapSampleState();
  }
}
class MapSampleState extends State<mapPage>
{
  Completer<GoogleMapController> _completer = Completer();
  static const CameraPosition _position= CameraPosition(
      target: LatLng(22.2997, -102.2413),
      zoom: 5.0
  );
  static const CameraPosition _durango = CameraPosition(
  target: LatLng(24.033058, -104.645577),
    zoom: 13,
      tilt: 20,
      bearing: 45
  );
  @override
  Widget build(BuildContext context)
  {
return Scaffold(
  body: GoogleMap(
    mapType: MapType.normal,
    initialCameraPosition: _position,
    onMapCreated: (GoogleMapController controller)
    {
      _completer.complete(controller);
    },
  ),
  floatingActionButton: FloatingActionButton.extended(
      onPressed: _gotoDurango,
      icon: Icon(Icons.home_filled),
      label: const Text("A Durango mi loco")),
);
  }
  Future<void> _gotoDurango() async
  {
    final GoogleMapController controller=await _completer.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_durango));
  }
}