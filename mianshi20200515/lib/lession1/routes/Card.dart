import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {

  @override
  State createState() {
    return _MyCard();
  }
}

class _MyCard extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;


    ret = Card(
      child: Text("card"),
    );


    ret = Center(child: ret,);
    return ret;
  }
}