import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class getLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DottedLine(
        dashLength: 3,
        dashGapLength: 3,
        lineThickness: 3,
        dashColor: Colors.blue,
        dashGapColor: Colors.white,
        direction: Axis.vertical,
        lineLength: 150,
      ),
    );
  }
}
