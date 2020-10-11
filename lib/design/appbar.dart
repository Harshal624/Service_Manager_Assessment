import 'package:flutter/material.dart';

class Custom_appbar extends StatelessWidget {
  final double _appBarAppIconSize = 40;
  final double _appBarTrainIconSize = 50;
  final double _appBarTitleSize = 22;
  final double _appBarNotifIconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.apps,
                color: Colors.white,
                size: _appBarAppIconSize,
              ),
              SizedBox(
                  width: _appBarTrainIconSize,
                  height: _appBarTrainIconSize,
                  child: Image.asset('assets/Raster.png', color: Colors.white)),
              Text(
                "Service Manager",
                style: TextStyle(
                    fontSize: _appBarTitleSize,
                    color: Colors.white,
                    fontFamily: 'Norwester'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.notifications_none,
                color: Colors.blue,
                size: _appBarNotifIconSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
