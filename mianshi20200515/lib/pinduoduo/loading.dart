import 'package:flutter/material.dart';

class MyLoading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget ret;
    ret = Stack(
      children: <Widget>[
        Opacity(opacity: .3, child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Opacity(opacity: .3, child: Center(),),
        ),)
        ,
        Center(

          child: Icon(Icons.cloud_download),
        )
      ],
    );

    return ret;
  }
}