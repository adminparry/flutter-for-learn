import 'package:flutter/material.dart';

class MyMaterialApp extends StatelessWidget {

  get title => 'MaterialApp';

  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = MaterialApp(
      home: Text("根组件"),
    );
    return ret;
  }
}