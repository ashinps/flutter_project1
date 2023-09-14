import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
//initial camera position

  static final CameraPosition initialCamPosistion =
  CameraPosition(target: LatLng(9.95543658180164, 76.29060269906282));

//creating controller
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

//Marker list
  final List<Marker>_markers = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(20.42796133580664, 75.885749655962),
      infoWindow: InfoWindow(title: "My Position")
    )
  ];

  Future getUserCurrentLocation()async{
    await Geolocator.requestPermission().then((value) {
    }).onError((error, stackTrace) async{
      await Geolocator.requestPermission();
      print("Error"+error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCamPosistion,
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
        markers: Set.of(_markers),
        onMapCreated: (controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          getUserCurrentLocation().then((value)async{


      //current location added
            _markers.add(
                Marker(
                  markerId: MarkerId("2"),
                  position: LatLng(value.latitude, value.longitude),
                  infoWindow: const InfoWindow(
                    title: 'My Current Location',
                  ),
                )
            );

            CameraPosition cameraPosition = CameraPosition(
              target: LatLng(value.latitude, value.longitude),
              zoom: 14,
            );

            final GoogleMapController controller = await _controller.future;
            controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
            setState(() {
            });


          });
        },
        child: Icon(Icons.local_activity),
      ),
    );
  }





}