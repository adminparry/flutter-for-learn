# BottomNavigationBar

底部导航按钮

## 优化

防止切换界面重新渲染 body部分使用IndexedStack 

``` dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items:_bottomTabs,
        onTap: (index){
          setState(() {
           currentIndex = index;
          });
        },
       fixedColor: Colors.green,
      ),
      body:IndexedStack(
        children: <Widget>[
           TopBarPage(),
           AudioBook(),
           Team(),
           Fair(),
           Mine()
        ],
        index: currentIndex,
      )
    );
  }
```