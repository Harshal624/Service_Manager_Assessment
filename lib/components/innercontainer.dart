import 'package:design_test/location/location.dart';
import 'package:flutter/material.dart';

class innerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                color: Colors.grey[400],
                child: Row(
                  children: [
                    Expanded(flex: 4,child: Container(color: Colors.blue,),),
                    Expanded(flex: 1,child: Container(color: Colors.red,),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                color: Colors.grey[400],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      child: RaisedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text("Add To Roaster",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontFamily: 'Roboto.ttf')),
                          ],
                        ),
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Location()
                          ));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.blue,
                            ),
                            Text(
                              "Set Reminder",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontFamily: 'Roboto.ttf'),
                            ),
                          ],
                        ),
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}