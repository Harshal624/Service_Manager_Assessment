import 'package:flutter/material.dart';

import '../ui/SizeConfig.dart';

class RadioButton extends StatefulWidget {
  final double heightRadio = 0;
  final double widthRadio = 0;

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
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
    final double _radioBFontSize = 12;
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
                  fontSize: _radioBFontSize,
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
                  fontSize: _radioBFontSize,
                  fontFamily: 'Roboto.ttf',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
