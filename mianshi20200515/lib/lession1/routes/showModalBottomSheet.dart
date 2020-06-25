import 'package:flutter/material.dart';

class MyShare extends StatefulWidget {

  @override
  State createState() {
    return _MyShare();
  }
}

class _MyShare extends State<MyShare> {


  List<String> nameItems = <String>[
    '微信', '朋友圈', 'QQ', 'QQ空间', '微博', 'FaceBook', '邮件', '链接'
  ];
  List<String> urlItems = <String>[
    'icon_wechat.png', 'icon_wechat_moments.png', 'icon_qq.png', 'icon_qzone.png',
    'icon_sina.png', 'icon_facebook.png', 'icon_email.png', 'icon_copylink.png'
  ];

  
  void onShare(){
    showModalBottomSheet(context: context, builder: (context){
      Widget ret;

      ret = shareWidget();

      return ret;
    });
  }

  Widget shareWidget() {
    Widget ret;

    ret = ConstrainedBox(
      constraints:BoxConstraints(
        minHeight: 0,
      ),
      child: GridView.count(
        crossAxisCount: 4,
        children: nameItems.map((item){
          Widget ret;
          int index = nameItems.indexOf(item);

          ret = Column(
            children: <Widget>[
//              Image.asset(urlItems[index]),
              Icon(Icons.dashboard),
              Text("$item"),

            ],
          );

          return ret;
        }).toList(),
      ),

    );

    return ret;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget ret;

    ret = Center(
      child: IconButton(icon: Icon(Icons.dashboard), onPressed: onShare),
    );
    return ret;
  }
}