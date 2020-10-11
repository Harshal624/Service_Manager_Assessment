import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class ShowLocation extends StatefulWidget {
  @override
  _ShowLocationState createState() => _ShowLocationState();
}

class _ShowLocationState extends State<ShowLocation> {
  Position currentLoc;
  String lat = "Latitude";
  Coordinates coordinates;
  String first;

  getUserLocation() async {
    currentLoc = await locate();
    coordinates = Coordinates(currentLoc.latitude, currentLoc.longitude);
    var address =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);

    setState(() {
      // lat = currentLoc.latitude.toString();
      lat = address.first.addressLine;
    });
  }

  Future<Position> locate() async {
    return getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Location"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              color: Colors.green,
              onPressed: () {
                getUserLocation();
              },
              child: Text("Latitude"),
            ),
            Text(lat),
          ],
        ),
      ),
    );
  }
}

/*Future<String> showLoc() async{
  Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  String latitude = position.latitude.toString();
  Fluttertoast.showToast(msg: latitude);
  return latitude;
}*/
