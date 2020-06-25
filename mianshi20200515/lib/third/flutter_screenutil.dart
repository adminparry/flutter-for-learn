import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(200),
      color: Colors.red,
      child: Text(
        'My width:${ScreenUtil().setWidth(375)}dp \n'
            'My height:${ScreenUtil().setHeight(200)}dp',
        style: TextStyle(
            color: Colors.white, fontSize: ScreenUtil().setSp(24)),
      ),
    );
  }
}