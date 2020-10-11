import 'package:design_test/location/showlocation.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InnerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: _TopLayout(),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: _BottomLayout(),
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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: RaisedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 4,
                              child: Text("Add To Roaster",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: 'Roboto.ttf')),
                            ),
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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: RaisedButton(
                        onPressed: () => _showLocation(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                  width: 30,
                                  height: 25,
                                  child: Image.asset(
                                      'assets/notification.png')),
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "Set Reminder",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: 'Roboto.ttf'),
                              ),
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

class _TopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: _ColumnList1(
                        sign: "SIGN IN",
                        status: "KYN",
                        time: "13:21",
                        fontSize: 10,
                      ),
                    ),
                    _DottedLines(),
                    Expanded(
                      flex: 1,
                      child: _ColumnList1(
                        sign: "SIGN OFF",
                        status: "KYN",
                        time: "20:35",
                        fontSize: 10,
                      ),
                    ),
                    _DottedLines(),
                    Expanded(
                      flex: 1,
                      child: _ColumnList1(
                        sign: "DUTY HRS",
                        status: "",
                        time: "7:14",
                        fontSize: 11,
                      ),
                    ),
                    _DottedLines(),
                    Expanded(
                      flex: 1,
                      child: _ColumnList1(
                        sign: "KMS",
                        status: "",
                        time: "156",
                        fontSize: 11,
                      ),
                    ),
                    _DottedLines(),
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10)),
                          child: _ColumnList1(
                            sign: "NDH",
                            time: "3:12",
                            status: "",
                            fontSize: 11,
                          )),
                    ),
                  ],
                ),
              ),
            )),
        SizedBox(
          width: 5,
        ),
        Expanded(
            flex: 1,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Center(
                      child: Text(
                    "232",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ))),
      ],
    );
  }
}

class _DottedLines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DottedLine(
      dashLength: 3,
      dashGapLength: 3,
      lineThickness: 1,
      dashColor: Colors.blue,
      dashGapColor: Colors.grey[200],
      direction: Axis.vertical,
      lineLength: double.infinity,
    );
  }
}

class _BottomLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text("TRAIN NO",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 10)),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("S", style: TextStyle(color: Colors.red)),
                              Text(
                                "9001",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("F", style: TextStyle(color: Colors.green)),
                              Text(
                                "9002",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("S", style: TextStyle(color: Colors.red)),
                              Text(
                                "9003",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  _DottedLines(),
                  Expanded(
                    flex: 1,
                    child: _ColumnLayout(
                      title: "START",
                      status1: "KYN",
                      status2: "CSMT",
                      status3: "ASO",
                      time1: "13:56",
                      time2: "17:41",
                      time3: "19:43",
                    ),
                  ),
                  _DottedLines(),
                  Expanded(
                    flex: 1,
                    child: _ColumnLayout(
                      title: "CHANGE",
                      status1: "CSMT",
                      status2: "ASO",
                      status3: "KYN",
                      time1: "15:24",
                      time2: "19:23",
                      time3: "20:20",
                    ),
                  ),
                  _DottedLines(),
                ],
              )),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );
  }
}

class _ColumnList1 extends StatelessWidget {
  final String sign;
  final String time;
  final String status;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Text(sign, style: TextStyle(fontSize: fontSize))),
            Expanded(
                flex: 1,
                child: Text(time, style: TextStyle(fontSize: fontSize))),
            Expanded(
                flex: 1,
                child: Text(status,
                    style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.red,
                        fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }

  _ColumnList1({@required this.sign,
    @required this.time,
    @required this.status,
    @required this.fontSize});
}

class _ColumnLayout extends StatelessWidget {
  final String title;
  final String status1, status2, status3;
  final String time1, time2, time3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(title,
              style: TextStyle(
                  decoration: TextDecoration.underline, fontSize: 10)),
          SizedBox(
            height: 4,
          ),
          Text(
            status1,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Text(
            time1,
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            status2,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Text(
            time2,
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            status3,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Text(
            time3,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  _ColumnLayout({this.title,
    this.status1,
    this.status2,
    this.status3,
    this.time1,
    this.time2,
    this.time3});
}

//Getlocation onclick event
void _showLocation(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => ShowLocation()));
}
