import 'package:flutter/material.dart';

import 'design.dart';

void main() {
  runApp(DesignTest());
}

class DesignTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Design(),
    );
  }
}
