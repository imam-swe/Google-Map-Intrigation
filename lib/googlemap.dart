import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart';

//

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({Key? key}) : super(key: key);

  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  double latitudeData = 24.07210;
  double longitudeData = 90.34817;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  late GoogleMapController mapController;
  // LatLng _center =  LatLng(latitudeData, longitudeData);

  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      latitudeData = position.latitude;
      longitudeData = position.longitude;
    });
  }

  // get geolocator => null;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Google Map Location"),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(latitudeData, longitudeData),
            zoom: 15.0,
          ),
        ),
      ),
    );
  }
}
