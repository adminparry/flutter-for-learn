import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {


  final List<String> banner;


  MyPageView({this.banner});

  @override
  State createState() {
    return _MyPageView();
  }
}

class _MyPageView extends State<MyPageView> {
  int _currentPageIndex = 0;
  PageController pageController;



  void onPageChanged(int i){
    setState(() {
      _currentPageIndex = i;
    });

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    pageController = PageController(initialPage: widget.banner.length * 5000 );

    pageController.addListener((){

//    var list = await bannerListXhr();

    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget ret;


    ret = PageView.builder(
      controller: pageController,
      itemCount: widget.banner.length * 100001,
      itemBuilder: (context, index){

        return Container(
          color: Colors.blue,
//          alignment: Alignment.center,
          child: Image.network(widget.banner[index % widget.banner.length], fit: BoxFit.fill,),
        );[index % widget.banner.length];
      },
      scrollDirection: Axis.horizontal,
      reverse: false,

      onPageChanged: onPageChanged,
//      children: children,
    );


    ret = Container(
      height: 200,
      child: Stack(
        children: <Widget>[
          ret,
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.banner.length, (i) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPageIndex % widget.banner.length == i
                              ? Colors.red
                              : Colors.grey),
                    );
                  }).toList(),

                ),
              ))
        ],
      ),
    );
    return ret;
  }
}