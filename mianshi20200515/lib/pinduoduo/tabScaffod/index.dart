import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MyHome.dart';
import '../tabbar/remen/calay.dart';

class MyCupertinoTabScaffoldExample extends StatelessWidget {

  final List list = [
    {"title":"首页","icon":Icons.home,"view":HomePage()},
    {"title":"关注","icon":Icons.all_inclusive,"view":Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children:<Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            child: SingleChildScrollView(
              child: Text("sdf"),
            ),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(style: BorderStyle.solid, width: 2.0, color: Colors.red)
            ),
          )
        ] ,
      )
      ,
    )},
    {"title":"分类","icon":Icons.album,"view":HomePage()},
    {"title":"聊天","icon":Icons.supervised_user_circle,"view":HomePage()},
    {"title":"个人中心","icon":Icons.supervised_user_circle,"view":HomePage()},

  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 0,
        items: List.generate(list.length, (index){
          return BottomNavigationBarItem(
              title: Text(list[index]["title"]),
              icon: Icon(list[index]["icon"])
          );
        }),
      ),

      tabBuilder: (context,index){
        return list[index]["view"];
      },
    );
  }
}