import 'package:flutter/material.dart';
import '../params/params.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(child: ListView(
        children: <Widget>[
          ParamsList(
              title: 'mainAxisAlignment',
              em: MainAxisAlignment.values,
              change: (val){

              }
          ),
          ParamsList(
              title: 'crossAxisAlignment',
              em: CrossAxisAlignment.values,
              change: (val){

              }
          ),

        ],
      )),
    );
  }
}