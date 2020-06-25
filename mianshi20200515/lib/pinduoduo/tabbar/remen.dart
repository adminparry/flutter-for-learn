import 'package:flutter/material.dart';
import '../MyBanner.dart';
import '../MyPulltoRefresh.dart';
import './remen/calay.dart';

class Hot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    return PageView(
//      children: <Widget>[
//        Text("fasd"),
//        Text("asdf"),
//
//      ],
//    );

    return MyPullToRefresh(
      children: <Widget>[
        MyBanner(),
        FenLei()
      ],
    );
    return Column(
      children: <Widget>[
        MyBanner(),
      ],
    );
  }
}