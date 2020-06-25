# dart常用语法

## List

list 转 list
``` dart
  static List<Map> all = [
    {'title': '首页', 'view': Home()},
    {'title': '我的学习', 'view': MyLearn()},
    {'title': '账号', 'view': User()},
  ];

  List<BottomNavigationBarItem> items = all.map((ele){
    return BottomNavigationBarItem(icon: Icon(Icons.clear),title: ele['title']);
  }).toList();

```