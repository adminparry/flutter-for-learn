import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './tabbar/remen.dart';
import './loading.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = Scaffold(
      appBar: AppBar(
        title: MySearchButton(),
      ),
      body: StackContext(),
    );

    return ret;
  }
}

class MyBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
class StackContext extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MyTabBarExample();
  }
}
class MyTabBarExample extends StatelessWidget {
  final List list = [
    {"bar":Text("热门"),"barView":Hot()},
    {"bar":Text("食品"),"barView":MyLoading()},
    {"bar":Text("鞋包"),"barView":"北京"},
    {"bar":Text("水果"),"barView":"视频"},
    {"bar":Text("百货"),"barView":"新时代"},
    {"bar":Text("电器"),"barView":""},
    {"bar":Text("手机"),"barView":"问答"},
    {"bar":Text("洗护"),"barView":"娱乐"},
    {"bar":Text("电脑"),"barView":"科技"},
    {"bar":Text("家装"),"barView":"懂车帝"},
    {"bar":Text("医药"),"barView":"财经"},
    {"bar":Text("男装"),"barView":"军事"},
    {"bar":Text("家纺"),"barView":"直播"},
    {"bar":Text("女装"),"barView":"体育"},
    {"bar":Text("运动"),"barView":"国际"},
    {"bar":Text("家具"),"barView":"健康"},
    {"bar":Text("海淘"),"barView":"房产"},
    {"bar":Text("内衣"),"barView":"国风"},
    {"bar":Text("美妆"),"barView":"冬奥"},
    {"bar":Text("车品"),"barView":"NBA"},
    {"bar":Text("母婴"),"barView":"值点"},

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: list.length,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
                isScrollable: true,
                labelColor: Colors.redAccent,

                unselectedLabelColor: Colors.black,
                labelStyle:TextStyle(color: Colors.redAccent,fontFamily: "monospace"),
                labelPadding: EdgeInsets.fromLTRB(14.0,2.0,14.0,2.0),
                indicatorColor: Colors.redAccent,
                indicatorSize:  TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.only(top: 20.0),
                tabs: List.generate(list.length, (index){
                  return list[index]["bar"];
                }),
            ),

          ),
          body: TabBarView(

              children: List.generate(list.length, (index){
                if(list[index]["barView"] is! String){
                  return list[index]["barView"];
                }
                return list[index]["bar"];


              })
          ),
        ),
//        child:Column(
//          children: <Widget>[
//
//            Container(
//              decoration: BoxDecoration(
//                border: Border(bottom: BorderSide(color: Colors.black12)),
//                color: Colors.red[50],
//
//              ),
//              child: TabBar(
//                labelColor: Colors.redAccent,
//                unselectedLabelColor: Colors.black,
//                labelStyle:TextStyle(color: Colors.redAccent,fontFamily: "monospace"),
//                labelPadding: EdgeInsets.fromLTRB(4.0,2.0,4.0,2.0),
//                indicatorColor: Colors.redAccent,
//                indicatorSize:  TabBarIndicatorSize.tab,
//                tabs: List.generate(list.length, (index){
//                  return list[index]["bar"];
//                }),
//              ),
//            ),
//
//            Expanded(
//              child:  TabBarView(children: List.generate(list.length, (index){
//                if(list[index]["barView"] is! String){
//                  return list[index]["barView"];
//                }
//                return list[index]["bar"];
//
//
//              })),
//            )
//          ],
//        )

    );
  }
}

class MySearchButton extends StatefulWidget {

  @override
  State createState() {
    return _MySearchButton();
  }
}

class _MySearchButton extends State<MySearchButton> {

  void _onPressed(context){
    Navigator.pushNamed(context, "Search");

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(onPressed: () => _onPressed(context),
      child: Row(
        children: <Widget>[

          Expanded(
            child: Row(children: <Widget>[Icon(Icons.search),Text("特大卷卫生纸")]),
          ),
          Expanded(
            child: Icon(Icons.camera_enhance),
          )
        ],
      ),
      color: Colors.white,
    );
  }
}