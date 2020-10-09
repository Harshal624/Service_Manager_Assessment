import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
                height: size.height * 0.76,
                child: _MainContainer(size.height, size.width),
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: size.height * 0.15,
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
        backgroundColor: Colors.grey[200],
        child: Icon(
          Icons.search,
          color: Hexcolor("#FF8080C5"),
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
          flex: 3,
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
  double heightRadio;
  double widthRadio;

  _radioButton(this.heightRadio, this.widthRadio);

  @override
  _radioButtonState createState() => _radioButtonState(heightRadio, widthRadio);
}

class _radioButtonState extends State<_radioButton> {
  int selectedRadio;
  double heightRadio;
  double widthRadio;

  _radioButtonState(this.heightRadio, this.widthRadio);

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
    return Container(
        height: heightRadio * 0.08,
        width: widthRadio * 0.98,
        child: Row(
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
                  fontSize: 10,
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
                  fontSize: 10,
                  fontFamily: 'Roboto.ttf',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}

class _MainContainer extends StatelessWidget {
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    final String innerContColor = "#3B505FE1";
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          _radioButton(height, width),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30), right: Radius.circular(30)),
            child: Container(
              width: width * 0.8,
              height: height * 0.08,
              color: Hexcolor("#70011627"),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //TODO Change this layout
                  SizedBox(
                    width: 10,
                  ),
                  Text("SET NO 232"),
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
          Container(
            width: width * 0.85,
            height: height * 0.4,
            color: Hexcolor(innerContColor),
            child: innerContainer(),
          )
        ],
      ),
    );
  }

  _MainContainer(height, width) {
    this.height = height;
    this.width = width;
  }
}


