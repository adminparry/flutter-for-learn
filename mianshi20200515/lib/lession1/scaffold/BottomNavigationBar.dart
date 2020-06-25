import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {

  final List<Map> list = [
    {'text': '部件', 'icon': Icons.add, },
    {'text': '业务部件', 'icon': Icons.title, },
    {'text': '关于', 'icon': Icons.map},
    {'text': '在哪', 'icon': Icons.list},

  ];
  final Function onIndexChange;

  final int current;

  MyBottomNavigationBar({this.onIndexChange, this.current});

  @override
  State createState() {
    return _MyBottomNavigationBar();
  }


}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  int currentIndex = 0;


  void onTap(int index){
    widget.onIndexChange(index);
    setState(() {
      currentIndex = index;
    });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = widget.current;

  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.yellow,
      onTap: onTap,
      items:widget.list.map((item){
        int index = widget.list.indexOf(item);

        return BottomNavigationBarItem(

            icon: Icon(item['icon'], color: currentIndex == index ? Colors.blueAccent : Colors.blue,),
            title: Text(item['text'], style: TextStyle(color: currentIndex == index ? Colors.black : Colors.blue),)
        );
      }).toList(),
    );

  }
}