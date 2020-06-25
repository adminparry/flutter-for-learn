import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {


  @override
  State createState() {
    return _MyListView();
  }
}

class _MyListView extends State<MyListView> {
  ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController  = ScrollController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Widget ret;



    ret = ListView(
      controller: scrollController,
      physics: AlwaysScrollableScrollPhysics(),
      children: <Widget>[
        Text("asdf")
      ],
    );
    return ret;

  }
}