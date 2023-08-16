import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
//initial camera position

  static const CameraPosition initialCamPosistion =
  CameraPosition(target: LatLng(9.95543658180164, 76.29060269906282));

//creating controller
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

// cameraposition of anorther location
  static const CameraPosition changePostion=CameraPosition(
      target: LatLng(10.520796655419026, 76.20469297376282));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCamPosistion,
        mapType: MapType.satellite,
        onMapCreated: (controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeLocation();
        },
        child: Icon(Icons.directions),
      ),
    );
  }
// change location

  Future<void> changeLocation() async{
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(changePostion));

  }


}