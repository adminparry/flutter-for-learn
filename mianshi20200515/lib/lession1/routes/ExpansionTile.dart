import 'package:flutter/material.dart';


class MyExpansionTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("ExpansionTile"),
      children: List.generate(11, (i){
        return Text("item$i");
      }),
    );
  }
}