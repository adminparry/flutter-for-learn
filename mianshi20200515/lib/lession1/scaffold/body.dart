import 'package:flutter/material.dart';
import 'package:mianshi20200515/lession1/app/onGenerateRoute.dart';
class MyBody extends StatefulWidget {

  final List<Map> list = onGenerateRoute().route;

  @override
  State createState() {
    return _MyBody(list);
  }
}

class _MyBody extends State<MyBody> {

  List<Map> list = [];


  _MyBody(this.list);

  void _onPressed(String routeName){
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;




    ret = ListView(
      children: list.map((item){

        String title = item['title'];
        String subtitle = item['subtitle'];

        if(title.length > 0)return Text(title);
        if(subtitle.length > 0)return FlatButton(
          child: Text('$subtitle'),
          onPressed: () => _onPressed("/$subtitle"),
        );

      }).toList(),
    );
    ret = Scaffold(
      appBar: AppBar(
        title: Text("学习flutter"),

      ),
      body: ret,
      drawer: Drawer(
        child: SafeArea(child: Text("抽屉")),
      ),
    );

    return ret;
  }
}