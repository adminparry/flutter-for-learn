import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provoider/Counter.dart';

class MyRow extends StatelessWidget {

  get title => "Row";

  final int length = 3;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    Widget ret;
    ret = Row(
      mainAxisAlignment: counter.main,
      crossAxisAlignment: counter.cross,
      children: List.generate(length, (i){
          return FlutterLogo();
      }),
    );
    return ret;
  }
}