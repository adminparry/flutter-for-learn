import 'package:flutter/material.dart';


class MyGridView extends StatefulWidget {


  @override
  State createState() {
    return _MyGridView();
  }
}

class _MyGridView extends State<MyGridView> {

  ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Widget ret;

    ret = GridView.count(
//      controller: scrollController,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      crossAxisCount: 4,
//      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 0),
      children: List.generate(8, (i){
        Widget ret;
        ret = Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.add),
              Text("gridView$i", overflow: TextOverflow.ellipsis, maxLines: 2,)
            ],
          ),
        );
        return ret;
      }),
    );

    ret = Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: ret,
    );

    ret = ListView(
      controller: scrollController,
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
//      controller: scrollController,
//      scrollDirection: Axis.horizontal,
//      physics: AlwaysScrollableScrollPhysics(),
      children: [
        SingleChildScrollView(

          scrollDirection: Axis.horizontal,
          physics: AlwaysScrollableScrollPhysics(),
          child: ret,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: scrollController,

          physics:AlwaysScrollableScrollPhysics(),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(4, (i){
                        Widget ret;
                        ret = Column(
                          children: <Widget>[
                            Icon(Icons.map),

                            Text("listview$i", overflow: TextOverflow.ellipsis,)
                          ],
                        );
                        ret = Expanded(
                          child: ret,
                        );
                        return ret;
                      })
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(4, (i){
                        Widget ret;
                        ret = Column(
                          children: <Widget>[
                            Icon(Icons.map),

                            Text("listview$i", overflow: TextOverflow.ellipsis,)
                          ],
                        );
                        ret = Expanded(
                          child: ret,
                        );
                        return ret;
                      })
                  ),
                ),

//                Expanded(
//                  child: Row(
//
//                    mainAxisAlignment: MainAxisAlignment.spaceAround,
//                    mainAxisSize: MainAxisSize.max,
//                    children: List.generate(4, (i){
//                      return Column(
//                        children: <Widget>[
//                          Icon(Icons.map),
//
//                          Text("listview1111$i", overflow: TextOverflow.ellipsis,)
//                        ],
//                      );
//                    }),
//                  ),
//                ),


              ],
            )
        ),
        ListView(
          controller: scrollController,
          shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
//          physics:AlwaysScrollableScrollPhysics(),
          children: Colors.primaries.map((item){
            return Container(height: 80, color: item, child: Text("$item"), alignment: Alignment.center,);
          }).toList()
        )
      ],

    );
    return ret;
  }
}