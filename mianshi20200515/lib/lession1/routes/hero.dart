import 'package:flutter/material.dart';
import '../constants/hero.dart';


class MyHero extends StatefulWidget {


  @override
  State createState() {
    return _MyHero();
  }
}

class _MyHero extends State<MyHero> {

  void onTap(){

    //删除点击
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text(
            '请确认当前操作',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: new SingleChildScrollView(
            child: Hero(tag: HeroTag.img, child: Icon(Icons.add, size: 40,)),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('取消'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text('确认'),
              onPressed: () {
                Navigator.of(context).pushNamed("/按钮");
              },
            )
          ],
        );
      },
    ).then((val) {
      print(val);
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
    Widget ret;

//    Dialog()

//    ret = Hero(tag: HeroTag.img, child: GestureDetector(onTap: onTap,child: Icon(Icons.add),));
    ret = Hero(
      tag: HeroTag.img,
      child: Icon(
        Icons.add,
        size: 70.0,
      ),
    );
    ret = GestureDetector(
      onTap: onTap,
      child: ret,
    );

    return ret;
  }
}