import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import '../../constant/colors.dart';
import '../scaffold/home.dart';
import './provider.dart';
//dio
import '../../third/dio.dart';
import 'dart:convert';

import '../../bean/yunketang/home_page_entity.dart';
import '../fluro/application.dart';
import '../fluro/routes.dart';
import 'package:mianshi20200515/third/fluro.dart';

Future<HomePageEntity> bannerListXhr() async {
  var dio = new Dio();
//  dio.options.baseUrl = "http://www.dtworkroom.com/doris/1/2.0.0/";
  dio.options.connectTimeout = 5000; //5s
  dio.options.receiveTimeout = 5000;
  dio.options.headers = {'user-agent': 'dio', 'common-header': 'chrome'};
//  dio.interceptors.add(LogInterceptor(responseBody: false)); //Open log

//  var u = new Uri(
//      scheme: "https",
//      host: "www.baidu.com",
//      queryParameters: {"xx": "xx", "yy": "dd"});
//
//  print(u);

//  dio.interceptors.add(InterceptorsWrapper(onRequest: (Options options) {
//    // return ds.resolve(new Response(data:"xxx"));
//    // return ds.reject(new DioError(message: "eh"));
//    return options;
//  }));


//  FormData formData = new FormData.from({
//    "name": "wendux",
//    "age": 25,
//    "file": new UploadFileInfo(new File("./example/upload.txt"), "upload.txt")
//  });

  // Send FormData
  Response response = await dio.post("https://m.study.163.com/j/operation/homepage.json");

  HomePageEntity homePageEntity = HomePageEntity.fromJson(json.decode(response.toString()));
  return homePageEntity;
//     setState(() {
//       banner = homePageEntity.result.focusDtoList;
//       pageController.jumpToPage(banner.length * 5000 );
//     });
}

void initRouter() {
  Routes.onConfigure();
  Application.router = Routes.router;
}
void main() async {

  initRouter();

  runApp(MyApp());

  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        primaryColor: Colors.blueGrey,
//        dividerColor: Color(0xffeeeeee),
//        scaffoldBackgroundColor: Color(Gcolor.blue),
//        textTheme: TextTheme(body1: TextStyle(color: Colors.black45))
      ),
      onGenerateRoute: Application.router.generator,
//      routes: onGenerateRoute().routes(),
//      home: MyHome(),
    );

    ret = MyProvider(
      child: ret,
    );

    return ret;
  }
}


