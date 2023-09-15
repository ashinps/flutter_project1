import 'package:flutter/material.dart';
import 'package:flutter_google_places_hoc081098/google_maps_webservice_places.dart';
import 'package:flutter_project1/examples/map_search/secrets.dart';
import 'package:flutter_project1/main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Map with Places Search',
      home: MapSearch(),
    );
  }
}
class MapSearch extends StatefulWidget {
  const MapSearch({super.key});

  @override
  State<MapSearch> createState() => _MapSearchState();
}

class _MapSearchState extends State<MapSearch> {
  GoogleMapController? _controller;
  GoogleMapsPlaces googlePlace = GoogleMapsPlaces(Secrets.googlePlacesApiKey);
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map with places search'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller){
              _controller=controller;
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(37.77, -122.41),
              zoom: 14.0,
            ),
          ),
          Positioned(top:10.0,left: 10.0,right: 10.0, child: TextField)
        ],
      ),
    );
  }
}
