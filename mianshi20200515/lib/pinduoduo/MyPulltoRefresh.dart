import 'package:flutter/material.dart';

class MyPullToRefresh extends StatefulWidget {
  final List<Widget> children;


  MyPullToRefresh({this.children});

  @override
  State createState() {
    return _MyPullToRefresh();
  }
}

class _MyPullToRefresh extends State<MyPullToRefresh> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: widget.children,
    );
  }
}