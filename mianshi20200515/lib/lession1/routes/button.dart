import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MyButton extends StatefulWidget {


  @override
  State createState() {
    return _MyButton();
  }


}

class _MyButton extends State<MyButton> {
  final String title1 = "RaisedButton";
  final String title2 = "FlatButton";
  final String title3 = "FloatingActionButton";
  final String title4 = "IconButton";
  final String title5 = "PopupMenuButton";
  final String title6 = "OutlineButton";
  final String title7 = "MaterialButton";
  final String title8 = "DropdownButton";
  final String title9 = "RawMaterialButton";
  final String title10 = "CupertinoButton";

  String selectValue = "数学";

  void onPressed(context, name){
    Scaffold.of(context).removeCurrentSnackBar();
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(name)));

  }


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


  List<Widget> _typeButtons(){
    return <Widget>[

      RaisedButton(
        child: Text(title1),
        onPressed: () => onPressed(context, title1),
      ),
      FlatButton(
        child: Text(title2),
        onPressed: () => onPressed(context, title2),
      ),
      FloatingActionButton(
          child: Text(title3),
          onPressed:() => onPressed(context, title3)
      ),
      IconButton(
        icon: Icon(Icons.local_cafe),
        onPressed: () => onPressed(context, title4),
      ),

      PopupMenuButton(

        tooltip: "长按提示",

//        child: Text(title5),
        onSelected: (_) => onPressed(context, title5),
        itemBuilder: (context){
          return <PopupMenuItem<String>>[
            PopupMenuItem<String>(child: Text("热度"), value: "hot",),
            PopupMenuItem<String>(child: Text("最新"), value: "new",),
          ];
        },
        onCanceled: () => onPressed(context, 'cancel'),
      ),
      ButtonBar(

        alignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.local_cafe),
          Text("cafe"),
          Icon(Icons.close)
        ],
      ),
      OutlineButton(
        onPressed: () => onPressed(context, title6),
        child: Text(title6),
      ),
      BackButtonIcon(),
      BackButton(color: Colors.red,),
      CloseButton(),
      MaterialButton(onPressed: () => onPressed(context, title7), child: Text(title7),),
      DropdownButton(
          value: selectValue,

          items: [
            DropdownMenuItem(child: Text('语文'),value: '语文',),
            DropdownMenuItem(child: Text('数学'),value: '数学'),
            DropdownMenuItem(child: Text('英语'),value: '英语'),
          ],
          onChanged: (val){
            onPressed(context, title8);
            setState(() {
              selectValue = val;
            });
          }
      ),
      RawMaterialButton(
        onPressed: (){
          onPressed(context, title9);
        },
        fillColor: Colors.blue,
        child: Text(title9),
      ),
      CupertinoButton(
        onPressed: (){
          onPressed(context, title10);
        },
        pressedOpacity: .5,
        color: Colors.blue,
        child: Text(title10),
      )
    ];
  }
  @override
  Widget build(BuildContext context) {

    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 10),
      crossAxisSpacing:10.0 ,   //水平子 Widget 之间间距
      mainAxisSpacing: 10.0,
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      children: _typeButtons().map((Widget item){
        Widget ret;
        ret = Container(
          child: Column(
            children: <Widget>[
              Text("$item"),
              Spacer(),
              item,
            ],
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, style: BorderStyle.solid)
        ),);
        return ret;
      }).toList(),
    );
  }
}