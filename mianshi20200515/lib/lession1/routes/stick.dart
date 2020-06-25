import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
class MyStick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemBuilder: (context, index){

      return StickyHeader(
        header: new Container(
          height: 50.0,
          color: Colors.blueGrey[700],
          padding: new EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: new Text('Header #$index',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        content: new Container(
          child: new Icon(
            Icons.opacity,
            color: Colors.primaries[index % Colors.primaries.length],
            size: 200,
          ),
        ),
      );
    }, itemCount: 20,);
  }
}