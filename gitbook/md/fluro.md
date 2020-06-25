# fluro


提供路由封装 跳转动画

## demo

``` dart
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = "/";
  static String bus = "/bus";

  static Router router = Router();

  static void register() {
    router.notFoundHandler = Handler(

        // ignore: missing_return
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          String notFound = 'ROUTE WAS NOT FOUND !!!';

          print("$notFound");
          return Scaffold(
            body: Center(
              child: Text("$notFound"),
            ),
          );
        }
    );


    router.define(root, handler: rootHandler);
    router.define("$bus/:id/:name", handler: busHandler,transitionType: TransitionType.nativeModal);


  }
  static navigateTo(context, path){

    router.navigateTo(context, path);
  }
  static generator({...args}){
      return router.generator(args)
  }
}
```