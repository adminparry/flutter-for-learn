# DecoratedBox

创建绘制[装饰]的小部件。

##### 继承
``` dart
class DecoratedBox extends SingleChildRenderObjectWidget
```
##### 构造

``` dart
  const DecoratedBox({
    Key key,
    @required this.decoration,
    this.position = DecorationPosition.background,
    Widget child,
  }) : assert(decoration != null),
       assert(position != null),
       super(key: key, child: child);
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->