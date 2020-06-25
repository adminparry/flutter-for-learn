import 'package:flutter/material.dart';
import '../constants/image.dart';

class MyNestedScrollView extends StatefulWidget {

  @override
  State createState() {
    return _MyNestedScrollView();
  }
  
}

class _MyNestedScrollView extends State<MyNestedScrollView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    Widget ret;
    
    ret = NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled){
          print(innerBoxIsScrolled);
          return [
            SliverAppBar(
              expandedHeight: 220,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("固定的头"),
                background: Image.asset(ImageTag.one, fit: BoxFit.cover,),
              ),
            )
          ];
        },
        body: ListView.builder(
            itemBuilder: (context, index){
          return Container(
            height: 80,
            color: Colors.primaries[index % Colors.primaries.length],
            alignment: Alignment.center,
            child: Text(
              "$index",
              style: TextStyle(color: Colors.white),
            ),
          );
        },
        itemCount: 20,)
    );
    
    return ret;
  }
}