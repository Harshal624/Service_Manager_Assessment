import 'package:flutter/material.dart';

import 'design/design.dart';

void main() {
  runApp(DesignTest());
}

class DesignTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Design(),
    );
  }
}
