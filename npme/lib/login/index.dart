import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  State createState() {
    return _Home();
  }
}

class _Home extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),

      ),
      body: Container(
        child: Text("home"),
      ),
    );
  }
}