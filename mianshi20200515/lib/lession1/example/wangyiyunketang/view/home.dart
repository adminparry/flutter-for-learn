import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State createState() {
    return _Home();
  }
}

class _Home extends State<Home> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = ListView(
      children: <Widget>[
        Banner(),

      ],
    );

    return ret;
  }
}