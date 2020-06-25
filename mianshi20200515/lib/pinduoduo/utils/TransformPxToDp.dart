import 'package:flutter/material.dart';

typedef int CalcDp(int px);


class TransformPxToDp {
  static MediaQueryData mq;

  static double dpr;

  static int designWidth;
  static int designHeight;
  static double flutterWidth;
  static double flutterHeight;



  static void init(BuildContext context, {width, height}){
    mq = MediaQuery.of(context);
    dpr = mq.devicePixelRatio;
    flutterWidth = mq.size.width;
    flutterHeight = mq.size.height;
    designHeight = height;
    designWidth = width;

  }


  static num width(num px){
    return flutterWidth * dpr / designWidth * px;
  }
  static num height(num px){
    return flutterHeight * dpr / designHeight * px;
  }

}


main(){
  TransformPxToDp.width(20.0);
}