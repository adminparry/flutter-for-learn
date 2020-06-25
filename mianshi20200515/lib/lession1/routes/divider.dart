import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = ListView(
      children: <Widget>[
        Divider(color: Colors.red, height: 100,indent: 10,),
        Container(height: 20, child: VerticalDivider(color: Colors.green)),
      ],
    );
    return ret;
  }
}