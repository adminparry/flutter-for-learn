
import 'package:flutter/material.dart';
import './params.dart';
import 'package:provider/provider.dart';
import '../provoider/Counter.dart';


class RowDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<Counter>(context);
    return Drawer(
      child: SafeArea(child: ListView(
        children: <Widget>[
          ParamsList(
              title: 'mainAxisAlignment',
              em: MainAxisAlignment.values,
              change: (val){
                counter.changeMain(val);
              }
          ),
          ParamsList(
              title: 'crossAxisAlignment',
              em: CrossAxisAlignment.values,
              change: (val){
                counter.changeCross(val);
              }
          ),

        ],
      )),
    );
  }
}