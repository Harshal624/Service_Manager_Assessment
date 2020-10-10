import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'SizeConfig.dart';
import 'components/innercontainer.dart';

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
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * 0.76,
                child: _MainContainer(),
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: SizeConfig.screenHeight * 0.15,
              child: SafeArea(
                child: _Custom_appbar(),
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Hexcolor(_bottomNavColor),
        child: Container(
          height: SizeConfig.screenHeight * 0.085,
          child: _Bottomnav_icons(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[200],
        child: Icon(
          Icons.search,
          color: Hexcolor("#FF8080C5"),
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
        SizedBox(
            width: 35,
            height: 35,
            child: Image.asset(
              'assets/archive.png',
              color: Colors.white,
            ))
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
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.apps,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 50,
                  height: 50,
                  child: Image.asset('assets/Raster.png', color: Colors.white)),
              Text(
                "Service Manager",
                style: TextStyle(
                    fontSize: 22, color: Colors.white, fontFamily: 'Norwester'),
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

class _radioButton extends StatefulWidget {
  final double heightRadio = 0;
  final double widthRadio = 0;

  @override
  _radioButtonState createState() => _radioButtonState();
}

class _radioButtonState extends State<_radioButton> {
  int selectedRadio;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: SizeConfig.screenHeight * 0.08,
        width: SizeConfig.screenWidth * 0.98,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Radio(
              value: 1,
              groupValue: selectedRadio,
              activeColor: Colors.black,
              onChanged: (val) {
                setSelectedRadio(val);
              },
            ),
            Text(
              "Search Set Number",
              maxLines: 2,
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Roboto.ttf',
                  fontWeight: FontWeight.bold),
            ),
            Radio(
              value: 2,
              groupValue: selectedRadio,
              activeColor: Colors.black,
              onChanged: (val) {
                setSelectedRadio(val);
              },
            ),
            Text(
              "Search Set By Train Number",
              maxLines: 2,
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Roboto.ttf',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}

class _MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final String innerContColor = "#3B505FE1";
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          _radioButton(),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30), right: Radius.circular(30)),
            child: Container(
              width: SizeConfig.screenWidth * 0.75,
              height: SizeConfig.screenHeight * 0.08,
              color: Hexcolor("#70011627"),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Text("SET NO 232"),
                  SizedBox(width: 20,),
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
              width: SizeConfig.screenWidth * 0.85,
              height: SizeConfig.screenHeight * 0.4,
              color: Hexcolor(innerContColor),
              child: InnerContainer(),
            ),
          )
        ],
      ),
    );
  }
}
