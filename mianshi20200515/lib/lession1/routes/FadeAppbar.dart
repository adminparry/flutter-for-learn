import 'package:flutter/material.dart';
import 'dart:math';

class MyFadeAppBar extends StatefulWidget {

  @override
  State createState() {
    return _MyFadeAppBar();
  }
}

class _MyFadeAppBar extends State<MyFadeAppBar> {

  double appBarAlpha = 0;


  bool onNotification(ScrollNotification notification){

    if (notification is ScrollUpdateNotification &&
        notification.depth == 0) {

      print(notification.metrics.pixels);

      double alpha = notification.metrics.pixels / 100;

//      if (alpha < 0) {
//        alpha = 0;
//      } else if (alpha > 1) {
//        alpha = 1;
//      }
      alpha = max(0, min(alpha, 1));

      setState(() {
        appBarAlpha = alpha;
      });
    }

    return true;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = ListView.builder(itemBuilder: (context, index){
      return Container(
        height: 80,
        color: Colors.primaries[index],
        alignment: Alignment.center,
        child: Text("${Colors.primaries[index]}", style: TextStyle(color: Colors.white),),
      );
    },
    itemCount: Colors.primaries.length,);

    ret = NotificationListener(
      onNotification: onNotification,
      child: ret,

    );

    ret = Stack(
      children: <Widget>[
        ret,

        Opacity(
          opacity: appBarAlpha,//滑动offset改变透明度
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              height: 100,
              child: Text("test"),
          )
        )
      ],
    );
    return ret;
  }
}