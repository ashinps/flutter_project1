import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final Completer<GoogleMapController> _controller  = Completer();

  final LatLng _center = const LatLng(45.0, 56.0);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  late Set<Marker>_marker = {};

  _addMarker(LatLng position) {
    setState(() {
      _marker = {};
      _marker.add(Marker(
      markerId: MarkerId(position.toString()),
      position: position,
      draggable: true,

      infoWindow: const InfoWindow(
      title:'Marker',
      snippet: 'Marker',
      ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
          children: [
            GoogleMap(
                onTap: _addMarker,
                onMapCreated: _onMapCreated,
                mapType: MapType.hybrid,
                markers: _marker,
                initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 0.0,

            )),

          ],
        ),

    );
  }
}
