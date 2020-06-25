import 'package:flutter/material.dart';

class DetailList extends StatelessWidget {

  final List list = [
    {
      'time': '05月24日 星期日',
      'cost': '677788',
      'detail': [
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},

      ]
    },
    {
      'time': '05月25日 星期一',
      'cost': '6778',
      'detail': [
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},

      ]
    },
    {
      'time': '05月26日 星期二',
      'cost': '2234',
      'detail': [
        {'type': 'car', 'cost': '23'},
        {'type': 'arrow_downward', 'cost': '45'},

      ]
    },


  ];


  List<Widget> convertJson(){
    List<Widget> all = [];

    list.forEach((item){
      String time = item['time'];
      String cost = item['cost'];
      List detail = item['detail'];

      all.add(TailTitle(time: time,cost: cost));
      detail.forEach((del){
        all.add(TailInner(type: del['type'], cost: del['cost']));
      });

    });

    return all;

  }


  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = ListView(
      children: convertJson(),
    );

//    ret = Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: ret,);

    return ret;
  }
}

class TailBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          TailTitle(time: 'asdf',cost: "233223",),
          TailInner()
      ],
    );
  }
}
class TailInner extends StatelessWidget {

  final String cost;
  final String type;

  TailInner({this.cost, this.type});

  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = Row(
      children: <Widget>[

        Expanded(
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.arrow_downward, color: Colors.yellow,),
              ),
              Padding(child: Text("$type"),padding:  EdgeInsets.only(left: 10),),
            ],
          ),
        ),
        Expanded(
          child: Padding(padding: EdgeInsets.only(right: 4), child: Align(
            child: Text("$cost"),
            alignment: Alignment.centerRight,
          ),),
        )
      ],
    );
    ret = Padding(padding: EdgeInsets.all(10), child: ret,);
    ret = PopupMenuButton(itemBuilder: (context){
      return [
        PopupMenuItem(child: Text("删除"), value: "delete",),
        PopupMenuItem(child: Text("修改"), value: "edit",),
        PopupMenuItem(child: Text("查看明细"), value: "detail",),

      ];
    },
      child: ret,
    );
    return ret;
  }
}
class TailTitle extends StatelessWidget {

  final String time;
  final String cost;


  TailTitle({this.time, this.cost});

  @override
  Widget build(BuildContext context) {
    Widget ret;

    Widget leftText = Text("$time", overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),);
    Widget rightText = Text("支出: $cost", overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),);

    ret = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: leftText,
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: rightText,
          ),
        )

      ],
    );
    ret = Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4), child: ret);
    ret = DecoratedBox(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey)
          )
      ),
      child: ret,
    );
    return ret;
  }
}