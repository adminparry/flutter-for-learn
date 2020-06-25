import 'package:flutter/material.dart';

class _ParamsList extends State<ParamsList> {

  var value;

  void _onChanged(val){

    setState(() {
      value = val;
      widget.change(value);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Widget ret;
    List<DropdownMenuItem> items = [

    ];

    widget.em.forEach((item){
      items.add(DropdownMenuItem(
        child: Text("$item"),
        value: item,
      ));

    });


    ret = DropdownButton(
      value: value,
      hint: new Text(widget.title),
      items: items,
      onChanged: (value) => _onChanged(value),
      elevation: 24,//设置阴影的高度
      style: new TextStyle(//设置文本框里面文字的样式
        color: Color(0xff4a4a4a),
        fontSize: 12,
      ),
//              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
//        iconSize: 40.0
    );
    return ret;
  }
}
class ParamsList<T> extends StatefulWidget {

  final String title;
  final List em;
  final Function change;
  ParamsList({this.title, this.em, this.change});

  @override
  State createState() {
    return _ParamsList();
  }
}
