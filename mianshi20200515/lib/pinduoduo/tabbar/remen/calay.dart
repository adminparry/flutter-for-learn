import 'package:flutter/material.dart';

class FenLei extends StatelessWidget {

  final List list = [
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.cloud, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},
    {'icon': Icons.add, 'route': '', 'text': '限时秒杀'},


  ];
  Widget getItemContainer(String item) {
    return Container(
      width: 5.0,
      height: 5.0,
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }
  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 100; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }
  @override
  Widget build(BuildContext context) {
    Widget ret;


//    ret = GridView.count(
//      scrollDirection: Axis.horizontal,
//      crossAxisCount: 2,
//      crossAxisSpacing: 0.0,
//
////      children: getWidgetList(),
//      children: List<Widget>.generate(list.length, (i){
//        Widget ret;
//
//        ret = Column(
//          children: <Widget>[
//            Icon(list[i]['icon']),
//            Text(list[i]['text'])
//          ],
//        );
//
//        return Container(
//          width: 10.0,
//          height: 10.0,
//          child: ret,
//          decoration: BoxDecoration(
//            color: Colors.greenAccent,
//            border: Border.all(style: BorderStyle.solid, width: 2.0, color: Colors.red)
//          ),
//        );
//      }),
//    );

    ret = Container(
      width: MediaQuery.of(context).size.width * 20,
      height: 100.0,
      child: Row(
        children: <Widget>[
          Text("sdafasdafasdafasdafasdafasdafa"),
          Text("sdafasdafasdafasdafasdafasdafa"),
          Text("sdafasdafasdafasdafasdafasdafa"),
          Text("sdafasdafasdafasdafasdafasdafa"),
          Text("sdafasdafasdafasdafasdafasdafa"),
          Text("sdafasdafasdafasdafasdafasdafa"),

        ],
      ),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(style: BorderStyle.solid, width: 2.0, color: Colors.red)
      ),
    );
    ret = SingleChildScrollView(

      physics: BouncingScrollPhysics(),
      child: ret,
    );
    return ret;
  }
}