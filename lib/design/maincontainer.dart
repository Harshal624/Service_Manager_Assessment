import 'package:design_test/design/radio.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../ui/SizeConfig.dart';
import 'innercontainer.dart';

class MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double _searchBarWidth = SizeConfig.screenWidth * 0.75;
    final double _searchBarHeight = SizeConfig.screenHeight * 0.08;
    final String _searchBarHex = "#70011627";
    final String innerContColor = "#3B505FE1";
    final double _innerContainerWidth = SizeConfig.screenWidth * 0.85;
    final double _innerContainerHeight = SizeConfig.screenHeight * 0.4;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          RadioButton(),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30), right: Radius.circular(30)),
            child: Container(
              width: _searchBarWidth,
              height: _searchBarHeight,
              color: Hexcolor(_searchBarHex),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("SET NO 232"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              width: _innerContainerWidth,
              height: _innerContainerHeight,
              color: Hexcolor(innerContColor),
              child: InnerContainer(),
            ),
          )
        ],
      ),
    );
  }
}
