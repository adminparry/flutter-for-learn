import 'package:flutter/material.dart';

import '../../third/dio.dart';
import '../../bean/gongjiao/station_entity.dart';
import '../../bean/gongjiao/r_time_entity.dart';
import 'dart:convert';
import '../provoider/Counter.dart';
import 'package:provider/provider.dart';
class MyTimeLine extends StatefulWidget {


  @override
  State createState() {
    return _MyTimeLine();
  }

  final Map routeParams;


  MyTimeLine({this.routeParams});



}

class _MyTimeLine extends State<MyTimeLine> {

  String id;
  String linename;
  int curIndex = 1;

  double circleRadius = 6;
  final circleColor = Color(0xffE1EFFE);
//  线的宽度和线距左边的距离
  double left = 20;
  double lineWidth = 4;

  List<String> list = [];
  List<double> busList = [];
  RTimeData busCurrent = RTimeData();
//地址站字体大小
  double fontSize = 10;
// 车图标的宽度
  double busWidth = 20;
//
  double currentWidth = 24;
// 每个站的高度
  double stationHeight = 50;

  Dio dio = Dio();

  lineRtimeXhr(String id, String station) async {
    if (!mounted)return;

    setState(() {
      curIndex = int.parse(station);
    });


    String path2 = 'http://www.bjbus.com/api/api_line_rtime.php';


    Response response2 = await dio.get(path2, queryParameters: {
      "uuid": id,
      "station": station
    });

    RTimeEntity rTimeEntity = RTimeEntity.fromJson(json.decode(response2.data));
    //    当前所在的站点
    List<double> busLists = rTimeEntity.data.busList.map((item){
      return item.top.toDouble();
    }).toList();


    setState(() {
      busList = busLists;
      busCurrent = rTimeEntity.data;
    });

  }
  xhr(String id, String name) async {
    if (!mounted)return;

    String path = 'http://www.bjbus.com/api/api_line_detail.php';

    Response response = await dio.get(path, queryParameters: {
      "linename": name,
      "dataid": id
    });


    StationEntity stationEntity = StationEntity.fromJson(json.decode(response.data));

    List<String> stations = stationEntity.data.line.vStatList.map((item){
      return item.vStatName;
    }).toList();

    setState(() {
      list = stations;

    });
  }

  void initXhr(){
    if (!mounted)return;



//    Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
//    Map args = widget.parameters;

    id = widget.routeParams["id"];
    linename = widget.routeParams["name"];

    this.xhr(id, linename);
    this.lineRtimeXhr(id, "1");



  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this.initXhr();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    dio.clear();
  }

  List<Widget> bus(){
    return busList.map((item){

      return Positioned(
        top: item.toDouble() - busWidth / 2,
        left: left - busWidth / 2,

        child: Container(
//          width: busWidth,
          alignment: Alignment.center,
          child: Icon(Icons.directions_bus, size: busWidth, color: Colors.yellow,),
        ),
      );
    }).toList();
  }

  Widget circle(index){
    Widget ret ;
    double hor = 0;

    if(curIndex.toString() != (index + 1).toString()){

      ret = Container(
        width: circleRadius *2 ,
        height: circleRadius *2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor,
        ),
      );
      hor = left  - circleRadius;
    }else{
      ret = Container(
        width: currentWidth,
        alignment: Alignment.center,
        child: Icon(Icons.gps_fixed, color: Colors.blue,size: 20,),
      );
      hor = left  - currentWidth / 2;
    }
    ret = Padding(
      padding: EdgeInsets.symmetric(horizontal: hor  ),
      child: ret,
    );

    return ret;
  }
  Widget itemBuilder(index){
    bool isCur = busCurrent.vLineSeq == (index + 1).toString();
    Widget ret;

    ret = Container(
      color: Colors.transparent,
      height: stationHeight,
//      decoration: BoxDecoration(
//        border: Border(bottom: BorderSide(color: Colors.grey))
//      ),
//      color: Colors.primaries[index % Colors.primaries.length],
//      padding: EdgeInsets.symmetric(vertical: left),
//      padding: EdgeInsets.zero,
      child: Container(

        child: Row(
          children: <Widget>[
            circle(index),

            Expanded(
              child: Container(
                color: isCur ? Color(0xffF3F9FF) : Colors.transparent,

                child: Row(
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(text: list[index], style: TextStyle(color: Colors.black)),
                            index == 0  ? TextSpan(text: ' 始发站', style: TextStyle(color: Colors.grey, fontSize: 12)) : TextSpan(),
                            index == list.length - 1 ? TextSpan(text: ' 终点站', style: TextStyle(color: Colors.grey, fontSize: 12)) : TextSpan(),

                          ]),
                    ),
                    isCur ? Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        alignment: Alignment.centerRight,
                        child: busCurrent.rTime.busTime == null ? Text("${busCurrent.rTime.rTips}") :Column(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Text("${busCurrent.rTime?.busTime} ${busCurrent.rTime?.busTimeType}", style: TextStyle(color: Colors.blue),),
                            Text("${busCurrent.rTime?.busSNum} / ${busCurrent.rTime?.busDis}"),

                          ],
                        ),
                      ),
                    ): Expanded(child: Text("")),

                  ],
                )
//
              ),
            )

          ],
        )
      ),


    );

    ret = GestureDetector(
      onTap: (){
        this.lineRtimeXhr(id, "${index + 1}");
      },
      child: ret,
    );

    return ret;
  }
  List<Widget> children(){
    return [
      // 左边的竖线
      Positioned(
        left: left - lineWidth / 2,
        top: left + fontSize / 2,
        bottom: left + fontSize / 2,
        child: Container(
          width: lineWidth,
          color: Color(0xffE1EFFE),
        ),
      ),

      // 右边的事件列表
      ListView.separated(
        padding: EdgeInsets.zero,
        itemCount:list.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return itemBuilder(index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1,
            indent: 45,
          );
        },
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {

    Widget ret;



    var _children = children();

    _children.addAll(bus());

    ret =  SingleChildScrollView(
//      elevation: 10,
//      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
      child: Stack(
        fit: StackFit.loose,
        children: _children,
      ),
    );

    ret = Container(
      color: Colors.white,
      child: ret,
    );
    ret = Scaffold(
      appBar: AppBar(
        title: Text("公交详情"),
      ),
      body: ret,
    );
    return ret;
  }
}



