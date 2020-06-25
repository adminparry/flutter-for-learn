import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {


  void onPressed(context){
    Scaffold.of(context).removeCurrentSnackBar();
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('我是消息：index'),
    ));
  }

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
        child: Text("你好"),
        onPressed: () => onPressed(context),
    );
  }
}