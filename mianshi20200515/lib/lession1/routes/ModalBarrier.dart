import 'package:flutter/material.dart';

class MyModalBarrier extends StatefulWidget {

  @override
  State createState() {
    return _MyModalBarrier();
  }
}

class _MyModalBarrier extends State<MyModalBarrier> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = ModalBarrier(
      color: Colors.black.withOpacity(.3),
    );

    ret = Center(
      child: Container(
        height: 100,
        width: 100,
        child: ret,
      ),
    );
    return ret;
  }
}