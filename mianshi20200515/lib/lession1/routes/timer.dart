import 'package:flutter/material.dart';
import 'dart:async';
class MyTimer extends StatefulWidget {

  @override
  State createState() {
    return _MyTimer();
  }
}

class _MyTimer extends State<MyTimer> {
  Timer timer;

  String getCode = "获取验证码";

  bool status = false;

  final int fromNum = 9;

  final int toNum = 0;

  int num = 9;


  void onPressed(){
    if(timer != null)return;
    setState(() {
      status = true;
    });
    timer = Timer.periodic(Duration(seconds: 1), callback);
  }
  void callback(Timer time){
    print(timer);
    setState(() {
      num -= 1;
    });

    if(num == toNum){

      setState(() {
        status = false;
        num = fromNum;
      });

      timer = null;
      time.cancel();



    }


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
    timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = Center(
      child: MaterialButton(
        onPressed: onPressed,
        color: status ? Colors.grey : Colors.blue,
        child: Text("${status ? num < 10 ? '0$num' : num : getCode}",
        style: TextStyle(color: status ? Colors.black :Colors.white),
        ),
      ),
    );
    return ret;
  }
}