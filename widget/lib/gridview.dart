import 'package:flutter/material.dart';

class View extends StatelessWidget {
  static final title = 'gridview';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret = GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2,
        mainAxisSpacing: 10,
        children: List.generate(6, (index) {
          Widget ret = Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Icon(Icons.add), Text("hello")],
          );

//          ret =  SingleChildScrollView(
//            child: ret,
//          );
          ret = Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: ret,
          );
          return ret;
        }));

    return ret;
  }
}
