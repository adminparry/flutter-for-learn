# AnimatedContainer

变换一个部件的样式属性

必选参数duration 过度的时间


## demo

点击颜色过度

``` dart
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
```


## 继承
``` dart
AnimatedContainer extends ImplicitlyAnimatedWidget
```

##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->