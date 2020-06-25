# 弹出框

## AlertDialog

material风格对话框
## CupertinoAlertDialog
cupertino风格对话框

## SimpleDialog
简约风格对话框

## Dialog
自定义对话框


## example

``` dart
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
class MyDialog extends StatefulWidget {


  @override
  State createState() {
    return _MyDialog();
  }
}

class _MyDialog extends State<MyDialog> {

  void self(){
    Widget ret;
    
    showDialog(context: context, builder: (context){
      return ret;  
    });
    
    ret = Dialog(
      insetAnimationDuration: Duration(milliseconds: 300),
      insetAnimationCurve: Curves.bounceIn,
      child: Container(
        child: RaisedButton(onPressed: (){}, child: Text("Dialog"),),
      ),
    );
  }
  void sample(){
    Widget ret;

    showDialog(context: context, builder: (context){

      return ret;
    });
    ret = SimpleDialog(
      title: Text('提示'),
      children: <Widget>[
        Container(
          height: 80,
          alignment: Alignment.center,

          child: Text('确认删除吗？'),
        ),
        Divider(height: 1,),
        FlatButton(
          child: Text('取消'),
          onPressed: () {
            Navigator.of(context).pop('cancel');
          },
        ),
        Divider(height: 1,),
        FlatButton(
          child: Text('确认'),
          onPressed: () {
            Navigator.of(context).pop('ok');
          },
        ),
      ],
    );
  }
  void ios(){
    showCupertinoDialog(
      context: context,
      builder: (context) {
        Widget ret;


        ret = CupertinoAlertDialog(
          title: Text('提示'),
          content: Text('确认删除吗？'),
          actions: <Widget>[
            CupertinoDialogAction(child: Text('取消'),onPressed: (){
              print("cancel");
              Navigator.of(context).pop();
            },),
            CupertinoDialogAction(child: Text('确认'),onPressed: (){},),
          ],
        );
        return ret;
    });
  }
  void android(){
    showDialog(
      context: context,
      builder: (context){
        Widget ret;

        ret = AlertDialog(
          title: new Text(
            '请确认当前操作',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: new SingleChildScrollView(
            child: Hero(tag: HeroTag.img, child: Icon(Icons.add, size: 40,),transitionOnUserGestures: true,),
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
        return ret;
      }
    );


  }
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        RaisedButton(
          onPressed: android,
          child: Text("alert android"),
        ),
        RaisedButton(
          onPressed: ios,
          child: Text("alert ios"),
        ),
        RaisedButton(
          onPressed: sample,
          child: Text("alert sample"),
        ),
        RaisedButton(
          onPressed: self,
          child: Text("alert Dialog"),
        ),

      ],
    );

  }
}
```
