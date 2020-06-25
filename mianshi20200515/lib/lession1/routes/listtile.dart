import 'package:flutter/material.dart';


class MyListTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.map),
      title: Text("title"),
      subtitle: Text("subtitle"),
    );
  }
}