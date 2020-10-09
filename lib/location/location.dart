import 'package:design_test/location/getlocation.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location"),),
      body: getLocation(),
    );
  }
}