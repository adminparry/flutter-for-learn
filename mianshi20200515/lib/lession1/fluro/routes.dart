import 'package:mianshi20200515/third/fluro.dart';
import 'package:flutter/material.dart';
import './handlers.dart';
import 'shayu_routes.dart';
import 'gongjiao_routes.dart';
import 'yunketang_routes.dart';
class Routes {
  static String root = '/';
  static String shayu = '/shayujizhang';
  static String yunketang = '/yunketang';

  static String gongjiao = '/beijinggongijao';
  static String gongjiaoDetail = '/beijinggongijao/detail';

  static Router router = Router();

  static onConfigure(){
    router.notFoundHandler = Handler(
      handlerFunc: ( BuildContext context, Map<String, List<String>> parameters){
        Widget ret;

        ret = Center(
          child: Text("not found", style: TextStyle(color: Colors.white),),
        );
        return ret;
      }
    );

    router.define(root, handler: RootHandler);
    router.define(shayu, handler: ShayuHandler);
    router.define(yunketang, handler: YunketangHandler);

    router.define("$gongjiao", handler: GongjiaoHandler);
    router.define("$gongjiaoDetail/:name/:id", handler: DetailHandler);


  }

}