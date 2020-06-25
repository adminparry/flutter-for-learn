# FlutterLogo

Flutter logo, 以widget形式. 这个widget遵从IconTheme。

##### 继承
``` dart
class FlutterLogo extends StatelessWidget 
```
##### 构造

``` dart
const FlutterLogo({
    Key key,
    this.size,
    this.colors,
    this.textColor = const Color(0xFF616161),
    this.style = FlutterLogoStyle.markOnly,
    this.duration = const Duration(milliseconds: 750),
    this.curve = Curves.fastOutSlowIn,
  }) : super(key: key);
```
##### 关联

[AnimatedContainer](./AnimatedContainer.html)

[FlutterLogoDecoration](./FlutterLogoDecoration.html)
