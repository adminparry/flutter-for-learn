import 'package:flutter/material.dart';
import './body.dart';
import './BottomNavigationBar.dart';
import '../business/business.dart';
import '../example/example.dart';

class MyHome extends StatefulWidget {

  final List<Widget> list = [
    MyBody(),
    Business(),
    Example(),
    MyBody(),

  ];
  @override
  State createState() {
    return _MyHome();
  }
}

class _MyHome extends State<MyHome> {
  int currentIndex = 0;


  void onIndexChange(int index){
    setState(() {
      currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(


      body: IndexedStack(
        children: widget.list,
        index: currentIndex,
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        onIndexChange: onIndexChange,
        current: currentIndex,
      ),

    );
  }
}