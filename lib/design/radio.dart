import 'package:flutter/material.dart';

import '../ui/SizeConfig.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int selectedRadio;
  final double _radioButtonFontSize = 15;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: SizeConfig.screenHeight * 0.08,
        width: SizeConfig.screenWidth,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Radio(
                        onChanged: (val) {
                          setSelectedRadio(val);
                        },
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: Colors.black,
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: Text(
                          "Search Set Number",
                          style: TextStyle(
                              fontFamily: 'fonts/Roboto.ttf',
                              fontSize: _radioButtonFontSize,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Radio(
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                      value: 2,
                      groupValue: selectedRadio,
                      activeColor: Colors.black,
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Text("Search Set By Train Number",
                          style: TextStyle(
                              fontFamily: 'fonts/Roboto.ttf',
                              fontSize: _radioButtonFontSize,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            )
          ],
        ));
  }
}
