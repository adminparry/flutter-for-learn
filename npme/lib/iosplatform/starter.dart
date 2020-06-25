import 'package:flutter/material.dart';

import '../staticRouter/index.dart';

import '../login/index.dart';

void main() => runApp(IosPlatform());

class IosPlatform extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "a npm ios application by flutter",
      theme: ThemeData(
        primaryColor:Colors.red
      ),
      routes: routes,
      home: new Login(),
    );
  }
}