import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  final String _bottomNavColor = "#FF9A1518";
  final String _appBarColor = "#FF011627";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Hexcolor(_appBarColor),
            width: size.width,
            height: size.height,
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
                  width: size.width,
                  height: size.height * 0.8,
                  child: Column(
                    children: [],
                  )),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: size.height * 0.12,
              child: SafeArea(
                child: _Custom_appbar(),
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Hexcolor(_bottomNavColor),
        child: Container(
          height: size.height * 0.085,
          child: _Bottomnav_icons(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[100],
        child: Icon(
          Icons.search,
          color: Colors.lightBlue[400],
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _Bottomnav_icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.account_circle,
          size: 35,
          color: Colors.white,
        ),
        Icon(Icons.train, size: 35, color: Colors.white),
        SizedBox.shrink(),
        Icon(Icons.chat, size: 35, color: Colors.white),
        Icon(Icons.archive, size: 35, color: Colors.white)
      ],
    );
  }
}

class _Custom_appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.apps,
                color: Colors.white,
                size: 30,
              ),
              Icon(
                Icons.train,
                color: Colors.white,
                size: 30,
              ),
              Text(
                "Service Manager",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontFamily: 'Roboto'
                ),
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
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
