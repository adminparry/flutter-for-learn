import 'package:flutter/material.dart';
import 'package:mianshi20200515/third/dio.dart';
import '../../bean/gongjiao/search_entity.dart';
import 'dart:convert';
import 'dart:async';
import '../fluro/routes.dart';
import './timeline.dart';

class MyInput extends StatefulWidget {


  @override
  State createState() {
    return _MyInput();
  }
}

class _MyInput extends State<MyInput> {

  SearchEntity searchEntity = SearchEntity();

  List<SearchResponseResultsetDataFeature> list = [];

  Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
    timer = null;
  }

  void onChanged(String text){
    timer?.cancel();
    if(!mounted)return;

    if(text.trim() == ""){
      setState(() {

        list = [];
      });
    }else{
      timer = Timer(Duration(milliseconds: 600), (){
        this.xhr(text);
        print("xhr");
      });
//      timer.cancel();
    }
  }

  xhr(String what) async {
    Dio dio = Dio();

//    坑点 queryParameters 参数只能是string

    Response response  = await dio.get(
        "http://www.bjbus.com/api/api_line_list.php",
        queryParameters:{
          "what": what,
          "hidden_MapTool": "busex2.BusInfo",
          "city": "%u5317%u4EAC",
          "pageindex": '1',
          "pagesize": '30',
          "fromuser": "bjbus",
          "datasource": "bjbus",
          "clientid": "9db0f8fcb62eb46c",
          "webapp": "mobilewebapp"
        }
    );
    dynamic responseJson = json.decode(response.data);

    searchEntity = SearchEntity.fromJson(responseJson);

    if(searchEntity.response.resultset is List)return;
    setState(() {

      list = searchEntity.response.resultset.data.feature;
    });
  }
  Widget itemBuilder(context, index){
    Widget ret;


    Widget child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("${list[index].vS2eNum}路"),
        Text("${list[index].vLineName.replaceAll(RegExp(r"\((\w+)\)"), "+")}"),

      ],
    );
    ret = Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.directions_bus, color: Colors.grey,),
          Expanded(child: child)
        ],
      ),
    );
    ret = GestureDetector(
      onTap: () {


        Routes.router.navigateTo(
          context,
          "${Routes.gongjiaoDetail}/${list[index].vLineName}/${list[index].id}",
        );

//        Navigator.pushNamed(context, Routes.gongjiaoDetail,  arguments: {
//          "id": list[index].id ,
//          "linename": list[index].vLineName
//        });
      },
      child: ret,
    );
    return ret;
  }
  Widget separatorBuilder(context, index){
    Widget ret;

    ret = Divider(
      color: Colors.grey,
      height: 1,
      indent: 0,
    );

    return ret;
  }
  int get itemCount => list.length;

  @override
  Widget build(BuildContext context) {
    Widget ret;


    Widget child = ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount);

    ret = Column(
      children: <Widget>[
        TextField(
          onChanged: onChanged,
        ),
        Expanded(child: child)

      ],
    );
    ret = Container(
      color: Colors.white,
      child: ret,
    );

    ret = Scaffold(
      appBar: AppBar(
        title: Text("北京公交"),
      ),
      body: ret,
    );
    return ret;
  }

}