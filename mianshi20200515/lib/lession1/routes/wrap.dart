import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(10, (i){
        return FlutterLogo(
          size: 50,
        );
      }),
    );
  }
}