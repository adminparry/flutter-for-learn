import 'package:flutter/material.dart';

class MyRefreshIndicator extends StatefulWidget {


  @override
  State createState() {
    return _MyRefreshIndicator();
  }
}

class _MyRefreshIndicator extends State<MyRefreshIndicator> {

  ScrollController scrollController;
  bool _loading = false;
  bool _more = false;
  int length = 50;

  Future <void> onRefresh() async {

//    if(_loading)return;
//
//    setState(() {
//
//      _loading = true;
//    });

    await Future.delayed(Duration(seconds: 2), (){
      setState(() {
        length = 50;
      });
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener((){
      if(_more)return;


      if(scrollController.position.pixels - scrollController.position.maxScrollExtent >= 0){
        print("滑动到了底部");

        setState(() {
          _more = true;
        });

        Future.delayed(Duration(seconds: 2), (){
          setState(() {
              length += 10;
              _more = false;
          });
        });



      }
    });
  }

  List<Widget> children(){
    List<Widget> ret = List.generate(length, (i){
      return Text("asdf$i");
    });


    ret.add(Center(child: Text("loading")));
    print(ret.sublist(ret.length - 5, ret.length));
    return ret;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(

        child: ListView(

          controller: scrollController,
          children: children(),
        ),
        onRefresh: onRefresh
    );
  }
}
