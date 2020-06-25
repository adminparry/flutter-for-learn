import 'package:flutter/material.dart';

class MyScrollbar extends StatefulWidget {


  @override
  State createState() {
    return _MyScrollbar();
  }
}
class _MyScrollbar extends State<MyScrollbar> {

  String _progress = "0%";



  bool onNotification(ScrollNotification notification){
    double progress = notification.metrics.pixels / notification.metrics.maxScrollExtent;

    setState(() {
      _progress = "${(progress * 100).toInt()}%";
    });

    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: NotificationListener(
          onNotification: onNotification,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView.builder(
                  itemCount: 100,
                  itemExtent: 50.0,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text("$index"));
                  }
              ),
              CircleAvatar(  //显示进度百分比
                radius: 30.0,
                child: Text(_progress),
                backgroundColor: Colors.black54,
              )
            ],
          )
      ),
    );
  }
}