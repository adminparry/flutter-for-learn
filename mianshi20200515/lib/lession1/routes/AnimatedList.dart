import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget {

  @override
  State createState() {
    return _MyAnimatedList();
  }
}
class _MyAnimatedList extends State<MyAnimatedList> {

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<int> _list = [1,2,3];

  void _addItem() {
    final int _index = _list.length;
    _list.insert(_index, _index);
    _listKey.currentState.insertItem(_index);
  }

  void _removeItem() {
    final int _index = _list.length - 1;

    var item = _list[_index];

    _listKey.currentState.removeItem(
        _index, (context, animation) => _buildItem(item, animation));
    _list.removeAt(_index);

  }


  Widget _buildItem(index, Animation animation){
    Widget ret;
    ret = SlideTransition(
      position: animation.drive(CurveTween(curve: Curves.easeIn)).drive(Tween<Offset>(begin: Offset(1,0),end: Offset(0,1))),
      child: Card(
        child: Text("card$index"),
      ),
    );
    return ret;
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = AnimatedList(
        key: _listKey,
        initialItemCount: _list.length,
        itemBuilder: (BuildContext context, int index, Animation animation){
      return _buildItem(index, animation);
    });
    ret = Column(
      children: <Widget>[
        Container(
          height: 500,
          child: ret,
        ),
        RaisedButton(onPressed: _addItem, child: Icon(Icons.add),),
        RaisedButton(onPressed: _removeItem, child: Icon(Icons.maximize),),

      ],
    );

    return ret;
  }
}