import 'package:flutter/material.dart';
import './view/index.dart';
class Wangyiyunketang extends StatefulWidget {

  @override
  State createState() {
    return _Wangyiyunketang();
  }
}
class All {
  String title;
  Widget view;

  All({this.title, this.view});

}
class _Wangyiyunketang extends State<Wangyiyunketang> {
  int cur = 0;
  

  static List<All> all = [
    All(title: '首页', view: Home()),
    All(title: '我的学习', view: MyLearn()),
    All(title: '账号', view: User()),
  ];

  List<Widget> children = all.map((item){
    print(item.view);
    return item.view;
  }).toList();

  List<BottomNavigationBarItem> items = all.map((ele){
    return BottomNavigationBarItem(icon: Icon(Icons.clear),title: Text(ele.title));
  }).toList();


  onTap(int index) {
    setState(() {
      cur = index;
    });
  }
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
  Widget build(BuildContext context) {

    // TODO: implement build
    Widget ret;
    ret = Scaffold(
      body: IndexedStack(
        index: cur,
        children: children,
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: cur,items:items, onTap: onTap, ),
    );
    return ret;
  }
}