import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class ShowLocation extends StatefulWidget {
  @override
  _ShowLocationState createState() => _ShowLocationState();
}

class _ShowLocationState extends State<ShowLocation> {
  Position currentLoc;
  String lat;
  Coordinates coordinates;

  getUserLocation() async {
    currentLoc = await locate();
    coordinates = Coordinates(currentLoc.latitude, currentLoc.longitude);
    var address =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);

    setState(() {
      lat = address.first.addressLine;
    });
  }

  Future<Position> locate() async {
    return getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Current Location"),
        ),
        body: Center(
          child: Text(lat ?? 'Loading...'),
        ));
  }
}
