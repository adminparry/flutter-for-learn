import 'package:flutter/material.dart';

class MyAnimatedSwitcher extends StatefulWidget {

  @override
  State createState() {
    return _MyAnimatedSwitcher();
  }
}

class _MyAnimatedSwitcher extends State<MyAnimatedSwitcher> {
  Widget _current;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _current = current1();
    });
  }

  Widget current1(){
    Widget ret;
    ret = Container(
      key: ValueKey("1"),
      height: 300,
      width: 300,
      color: Colors.blue,
    );
    return ret;
  }
  Widget current2(){
    Widget ret;
    ret = Container(
      key: ValueKey("2"),
      height: 300,
      width: 300,
      color: Colors.red,
    );
    return ret;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = AnimatedSwitcher(
      switchInCurve: Curves.bounceIn,
      switchOutCurve: Curves.bounceInOut,
      duration: Duration(seconds: 1),
      child: _current,
      transitionBuilder: (Widget child, Animation<double> value) {
        return FadeTransition(
          child: child,
          opacity: value,
        );
      },
    );
    ret = Column(
      children: <Widget>[
        Container(
          height: 500,
          child: ret,
        ),
        RaisedButton(child: Text("1"), onPressed: (){
          setState(() {
            _current = current1();
          });
        },),
        RaisedButton(child: Text("2"), onPressed: (){
          setState(() {
            _current = current2();
          });
        },)
      ],
    );
    return ret;
  }
}