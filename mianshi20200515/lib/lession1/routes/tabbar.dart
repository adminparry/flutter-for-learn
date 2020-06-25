import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {


  @override
  State createState() {
    return _MyTabbar();
  }
}

class _MyTabbar extends State<MyTabbar> with  SingleTickerProviderStateMixin<MyTabbar> {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("rebuild");
    tabController = TabController(length: 11,vsync: this);
    tabController.addListener((){

    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Widget ret;

    Widget tabbar = TabBar(

      controller: tabController,
      isScrollable: true,
      labelColor: Colors.redAccent,

      unselectedLabelColor: Colors.black,
      labelStyle:TextStyle(color: Colors.redAccent,fontFamily: "monospace"),
      labelPadding: EdgeInsets.fromLTRB(14.0,2.0,14.0,2.0),
      indicatorColor: Colors.redAccent,
      indicatorSize:  TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.only(top: 20.0),
      tabs: List.generate(11, (index){
        return Container(height: 72, alignment: Alignment.center,child:Text("bar$index", style: TextStyle(fontSize: 20),));
      }),

    );
//    添加背景颜色
    tabbar = Material(color: Colors.white, child: tabbar,);

    Widget tabview = TabBarView(
        controller: tabController,
        children: List.generate(11, (i){
          return CacheListView();
        })
    );

    ret =  Column(
      children: <Widget>[
        tabbar,
        Expanded(
          child: tabview,
        )
        ,
      ],
    );
    return ret;
  }
}

class CacheListView extends StatefulWidget {

  @override
  State createState() {
    return _CacheListView();

  }
}

class _CacheListView extends State<CacheListView> with AutomaticKeepAliveClientMixin {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);


    return ListView(
        children: List.generate(Colors.primaries.length, (i) {
          return Container(
              height: 80,
              alignment: Alignment.center,
              color: Colors.primaries[i],
              child: Text("$i", style: TextStyle(color: Colors.white),)
          );
        })
    );
  }
}
