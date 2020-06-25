import 'package:flutter/material.dart';
import 'detail/list.dart';
class Detail extends StatefulWidget {

  @override
  State createState() {
    return _Detail();
  }
}

class _Detail extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = Table(
        defaultVerticalAlignment:TableCellVerticalAlignment.bottom,
        children: [
          TableRow(
              children: [
                Padding(child:Text("2020年"), padding: EdgeInsets.only(left: 10),),
                Text("收入"),
                Text("支出"),

              ]
          ),
          TableRow(

              children: [



                GestureDetector(
                  onTap: (){
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: new DateTime.now().subtract(new Duration(days: 30)), // 减 30 天
                      lastDate: new DateTime.now().add(new Duration(days: 30)),
                    ).then((val) {
                      print(val);
                    }).catchError((err) {
                      print(err);
                    });
                  },
                  child:Padding(child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                          child: Text("05", overflow: TextOverflow.ellipsis,),
                        ),


                        DecoratedBox(decoration: BoxDecoration(
                            border: Border(right: BorderSide(color: Colors.black87))
                        ), child: Icon(Icons.arrow_downward),)
                        ]
                  ), padding: EdgeInsets.only(left: 10),)) ,


                Text("8.00"),
                Text("292.00"),

              ]
          ),

        ]
    );
    
    ret = DecoratedBox(decoration: BoxDecoration(
      color: Colors.yellow
    ) , child: ret);



    ret = Scaffold(
      appBar: AppBar(
        title: Text("🦈记账"),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          ret,
          Expanded(
            child: DetailList(),
          )
        ],
      ),
    );
    return ret;
  }
}