import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
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
                  children: [
                    
                  ],
                )
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: SafeArea(
                  child: Row(
                children: [
                  Icon(
                    Icons.apps,
                    color: Colors.white,
                  ),
                  Text(
                    "Service Manager",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.blue,
                  ),
                ],
              )))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.pink,
        child: Container(
          height: size.height * 0.085,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.account_balance,
                size: 35,
                color: Colors.white,
              ),
              Icon(Icons.add, size: 35, color: Colors.white),
              SizedBox.shrink(),
              Icon(Icons.star, size: 35, color: Colors.white),
              Icon(Icons.access_time, size: 35, color: Colors.white)
            ],
          ),
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
