import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provoider/Counter.dart';
class MyColumn extends StatelessWidget {


  final int length = 10;
  Widget generator(int i){
    return FlutterLogo();
  }


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColumnProvider>(context);

    Widget ret;

    ret = Column(
      mainAxisAlignment: provider.main,
      crossAxisAlignment: provider.cross,
      children: List.generate(length, generator),
    );
    return ret;
  }
}