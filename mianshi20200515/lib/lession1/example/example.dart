import 'package:flutter/material.dart';

class Example extends StatelessWidget {


  void onPressed(context, routeName){
    Navigator.pushNamed(context, routeName)  ;

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("鲨鱼记账"),
            onPressed:() => onPressed(context, '/shayujizhang'),
          ),
          RaisedButton(
            child: Text("北京公交"),
            onPressed:() => onPressed(context, '/beijinggongijao'),
          ),
          RaisedButton(
            child: Text("网易云课堂"),
            onPressed:() => onPressed(context, '/yunketang'),
          ),

        ],
      ),
    );
  }
}
