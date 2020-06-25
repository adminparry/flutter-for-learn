import 'package:flutter/material.dart';
import '../routes/index.dart';

import '../params/index.dart';
//鲨鱼记账
import '../example/shayujizhang.dart';

class onGenerateRoute {

//  static Route<dyamic> generate(RouteSettings setting){
//
//  }
   List<Map> list = [

    {'title': '根组件', 'subtitle': ''},
    {'title': '', 'subtitle': 'MaterialApp', 'builder':MyMaterialApp()},
    {'title': '', 'subtitle': 'Scaffold', 'builder':MyMaterialApp()},
    {'title': '', 'subtitle': 'AppBar' , 'builder':MyMaterialApp()},
    {'title': '', 'subtitle': 'Drawer', 'builder':MyMaterialApp()},
    {'title': '', 'subtitle': 'BottomNavigationBar', 'builder':MyMaterialApp()},

//    以上都是根组件
    {'title': '功能组件', 'subtitle': ''},
    {'title': '', 'subtitle': 'Text', 'builder':MyMaterialApp()},
    {'title': '', 'subtitle': 'Form', 'builder':MyForm()},
    {'title': '', 'subtitle': 'Scrollbar', 'builder':MyScrollbar()},
    {'title': '', 'subtitle': 'RefreshIndicator', 'builder':MyRefreshIndicator()},
     {'title': '', 'subtitle': 'SnackBar', 'builder':MySnackBar()},
     {'title': '', 'subtitle': 'Dialog', 'builder':MyDialog()},
     {'title': '', 'subtitle': 'AnimatedList', 'builder':MyAnimatedList()},
     {'title': '', 'subtitle': 'AnimatedSwitcher', 'builder':MyAnimatedSwitcher()},
     {'title': '', 'subtitle': 'NestedScrollView', 'builder':MyNestedScrollView()},
     {'title': '', 'subtitle': 'PageView', 'builder':MyPageView(banner: [],)},
     {'title': '', 'subtitle': 'AnimatedContainer', 'builder':MyAnimatedContainer()},
     {'title': '', 'subtitle': 'ModalBarrier', 'builder':MyModalBarrier()},


     {'title': '', 'subtitle': 'ListTile', 'builder':MyListTile()},
     {'title': '', 'subtitle': 'ExpansionTile', 'builder':MyExpansionTile()},

     {'title': '', 'subtitle': 'TaBbar', 'builder':MyTabbar()},
     {'title': '', 'subtitle': 'ListView', 'builder':MyListView()},


     {'title': '布局部件', 'subtitle': ''},
    {'title': '', 'subtitle': 'Row', 'builder':MyRow(), 'drawer': RowDrawer()},
     {'title': '', 'subtitle': 'Column', 'builder':MyColumn(), 'drawer': ColumnDrawer()},
     {'title': '', 'subtitle': 'Wrap', 'builder':MyWrap(), 'drawer': ColumnDrawer()},
     {'title': '', 'subtitle': 'Divider', 'builder':MyDivider()},
     {'title': '', 'subtitle': 'GridView', 'builder':MyGridView()},

     {'title': '容器部件', 'subtitle': ''},
     {'title': '', 'subtitle': 'Container', 'builder':MyContainer(), 'drawer': ColumnDrawer()},

     {'title': '第三方部件', 'subtitle': ''},
     {'title': '', 'subtitle': 'StickyHeader', 'builder':MyStick()},
     {'title': '', 'subtitle': 'WebView', 'builder':MyWebView()},

   ];
   List<Map> list1 = [
     {'title': '业务组件', 'subtitle': ''},
     {'title': '', 'subtitle': '按钮', 'builder':MyButton()},
     {'title': '', 'subtitle': '输入框', 'builder':MyInput()},
     {'title': '', 'subtitle': '路由跳转部件动画', 'builder':MyHero()},
     {'title': '', 'subtitle': '对话框', 'builder':MyDialog()},
     {'title': '', 'subtitle': 'appBar滚动渐变', 'builder':MyFadeAppBar()},
     {'title': '', 'subtitle': '分享', 'builder':MyShare()},
     {'title': '', 'subtitle': '文字滚动', 'builder':FontMarquee()},
     {'title': '', 'subtitle': '短信验证码', 'builder':MyTimer()},
//     {'title': '', 'subtitle': '时间轴', 'builder':MyTimeLine()},

   ];
   List<Map> list2 = [
     {'subtitle': 'shayujizhang', 'builder': Shayujizhang() }
   ];

   get route => list;

   get business => list1;



  Map<String, WidgetBuilder> routes(){
    Map<String, WidgetBuilder> map = Map();
    List<Map> all = List();

    all.addAll(list1);
    all.addAll(list);


    list2.forEach((item){
      map.addAll({
        '/${item['subtitle']}': (context) => item['builder']
      });
    });


    all.forEach((item){
      if(item['builder'] != null){
        map.addAll({
          '/${item['subtitle']}': (context) => ScaffoldXhr(item['builder'], item['drawer'], item['subtitle'], context)
        });
      }
    });

    return map;

  }
}

class ScaffoldXhr extends StatefulWidget {

  final Widget builder;
  final Widget drawer;
  final String subtitle;

  final BuildContext context;


  ScaffoldXhr(this.builder, this.drawer, this.subtitle, this.context);

  @override
  State createState() {
    return _ScafflodXhr();
  }
}

class _ScafflodXhr extends State<ScaffoldXhr> {
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

    print(widget.builder);
//    this.bannerListXhr();
      ret =  Scaffold(
        appBar: AppBar(
          title: Text("${widget.subtitle}"),
        ),
        body: widget.builder,
        drawer: widget.drawer,
      );

    return ret;
  }
}

