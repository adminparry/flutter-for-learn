import 'package:mianshi20200515/third/fluro.dart';
import 'package:flutter/material.dart';
import '../scaffold/home.dart';

Handler RootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
    return MyHome();
  }
);
