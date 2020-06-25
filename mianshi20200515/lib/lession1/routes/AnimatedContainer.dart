import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {

  @override
  State createState() {
    return _MyAnimatedContainer();
  }
}

class _MyAnimatedContainer extends State<MyAnimatedContainer>  {

  bool isChange = false;

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

  void onTap(){

    setState(() {
      isChange = !isChange;

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;
    ret = AnimatedContainer(
      curve: Curves.bounceInOut,
      duration: Duration(seconds: 1),
      decoration: BoxDecoration(
          color: isChange ? Colors.red : Colors.green
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text("AnimatedContainer", style: TextStyle(color: Colors.white),),
      ),
    );


    ret = GestureDetector(
      child: ret,
      onTap: onTap,
    );

    return ret;

  }
}