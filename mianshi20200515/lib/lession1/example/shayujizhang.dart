import 'package:flutter/material.dart';
import 'shayujizhang/my.dart';
import 'shayujizhang/chart.dart';
import 'shayujizhang/add.dart';
import 'shayujizhang/detail.dart';

class Shayujizhang extends StatelessWidget {
  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,

      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {

  final List list = [
    Detail(),
    Text("asdf"),
    Detail(),
    Detail(),

  ];
  @override
  State createState() {
    return _MyHome();
  }
}

class _MyHome extends State<MyHome> {
  int currentIndex = 0;


  void onTap(index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle textStyle = TextStyle(color: Colors.grey);
    return Scaffold(

      body: IndexedStack(
        children: <Widget>[
          Detail(),
          Text("asdf"),
          Text("999"),

          Detail(),
          Detail(),
        ],
        index: currentIndex,
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add,color: Colors.black87,),
        onPressed: () {
          print("add press ");
        },
      ),
      bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(5, (index){
            Widget ret;
            if(index == (5/2).floor())return Spacer();

            ret = Column(

               children: <Widget>[
                 Icon(Icons.monetization_on, ),
                 Expanded(
                   child: Text("明细", overflow: TextOverflow.ellipsis,maxLines: 1, ),
                 )

               ],
            );
            ret = Container(height: 50,child: ret,margin: EdgeInsets.symmetric(vertical: 10),

            );
            ret = GestureDetector(child: ret, onTap: () => onTap(index),);
            ret = Expanded(child: ret);
//            ret = GestureDetector(child: ret, onTap: () => onTap(index),);
            return ret;
          }),



        ),
      )
//        BottomNavigationBar(
//          type: BottomNavigationBarType.fixed,
//          onTap: (index){
//            setState(() {
//              currentIndex = index;
//            });
//          },
//          currentIndex: currentIndex,
//          selectedItemColor: Colors.yellow,
//          unselectedItemColor: Colors.grey,
//          items:[
//            BottomNavigationBarItem(
//
//                icon: Icon(Icons.monetization_on, ),
//                title: Text("明细", style: textStyle,)
//            ),
//            BottomNavigationBarItem(
//                icon: Icon(Icons.insert_chart),
//                title: Text("图表", style: textStyle,)
//            ),
//            BottomNavigationBarItem(
//                icon: Icon(Icons.add),
//                title: Text("记账", style: textStyle,)
//            ),
//            BottomNavigationBarItem(
//                icon: Icon(Icons.account_circle),
//                title: Text("我的", style: textStyle,)
//            ),
//
//          ]
//      ),

    );
  }
}