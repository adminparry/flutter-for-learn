# LimitedBox

创建仅在不受约束时才限制其大小的框

##### 继承
``` dart
class LimitedBox extends SingleChildRenderObjectWidget
```
##### 构造

``` dart
  const LimitedBox({
    Key key,
    this.maxWidth = double.infinity,
    this.maxHeight = double.infinity,
    Widget child,
  }) : assert(maxWidth != null && maxWidth >= 0.0),
       assert(maxHeight != null && maxHeight >= 0.0),
       super(key: key, child: child);
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->