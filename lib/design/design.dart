import 'package:design_test/design/appbar.dart';
import 'package:design_test/design/maincontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../ui/SizeConfig.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  final String _bottomNavColor = "#FF9A1518";
  final String _appBarColor = "#FF011627";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double _mainContainerheight = SizeConfig.screenHeight * 0.76;
    final double _mainContainerWidth = SizeConfig.screenWidth;
    final double _appBarHeight = SizeConfig.screenHeight * 0.15;
    final double _bottomNavHeight = SizeConfig.screenHeight * 0.085;
    final int _floatingABColor = 0x9FF8080C5;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Hexcolor(_appBarColor),
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: Row(
              children: [
                Icon(
                  Icons.apps,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              child: Container(
                color: Colors.white,
                width: _mainContainerWidth,
                height: _mainContainerheight,
                child: MainContainer(),
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: _appBarHeight,
              child: SafeArea(
                child: Custom_appbar(),
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Hexcolor(_bottomNavColor),
        child: Container(
          height: _bottomNavHeight,
          child: _Bottomnav_icons(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[200],
        child: Icon(
          Icons.search,
          color: Color(_floatingABColor),
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _Bottomnav_icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _bottomNavIconSize = 38.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.account_circle,
          size: _bottomNavIconSize,
          color: Colors.white,
        ),
        Icon(Icons.train, size: _bottomNavIconSize, color: Colors.white),
        SizedBox.shrink(),
        Icon(Icons.chat, size: _bottomNavIconSize, color: Colors.white),
        SizedBox(
            width: _bottomNavIconSize,
            height: _bottomNavIconSize,
            child: Image.asset(
              'assets/archive.png',
              color: Colors.white,
            ))
      ],
    );
  }
}
