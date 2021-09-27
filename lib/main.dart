import 'package:flutter/material.dart';
//import 'package:google_map/googlemap.dart';
import 'googlemap.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // double latitudeData;
  // double longitudeData;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google Maps Demo',
      home: GoogleMapPage(),
    );
  }
}
