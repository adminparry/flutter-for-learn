import 'package:flutter/material.dart';
import './MyHome.dart';
import './tabScaffod/index.dart';
import './routes.dart' show routes;
import './http/httpTools.dart';

void main() async {
//  HttpTools httpTools = HttpTools();
//  await httpTools.post(
//    path: "/japi/toh",
//    bodyParameters: {'v': '1.0','month':'7','day':"25",'key':"bd6e35a2691ae5bb8425c8631e475c2a"}
//  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: true,
      routes: routes,
      home: MyCupertinoTabScaffoldExample(),
//      home: Test(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );

  }
}

class Test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
            
            margin: EdgeInsets.only(top: 200.0),
            width: MediaQuery.of(context).size.width * 2,
            child: Row(
              children: <Widget>[
                Text("asdfasdfasdfasdfasdfasdfasdfasdf"),
                Text("asdfasdfasdfasdfasdfasdfasdfasdf"),
                Text("asdasdfasdfasdfasdfasdfasdfasdfasdff"),
                Text("asdfasdfasdfasdfasdfasdfasdfasdf"),
                Text("asdfasdfasdfasdfasdfasdfasdfasdf"),
                Text("asdfasdfasdfasdfasdfasdfasdfasdf"),

              ],
            ),
          )


        ,
      ),
    );
    return ret;
  }
}