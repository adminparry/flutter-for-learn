import 'package:flutter/material.dart';
import '../app/onGenerateRoute.dart';

class Business extends StatelessWidget {

  final List<Map> list = onGenerateRoute().business;


  void _onPressed(context , String routeName){
    Navigator.pushNamed(context, routeName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("业务组件"),
      ),
      body: ListView(
        children: list.map((item){

          String title = item['title'];
          String subtitle = item['subtitle'];

          if(title.length > 0)return Text(title);
          if(subtitle.length > 0)return FlatButton(
            child: Text('$subtitle'),
            onPressed: () => _onPressed(context, "/$subtitle"),
          );

        }).toList(),
      ),
    );
  }
}