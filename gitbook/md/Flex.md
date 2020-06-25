# Flex


##### 继承
``` dart
class Flex extends MultiChildRenderObjectWidget 
```
##### 构造

``` dart
Flex({
    Key key,
    @required this.direction,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    List<Widget> children = const <Widget>[],
  }) : assert(direction != null),
       assert(mainAxisAlignment != null),
       assert(mainAxisSize != null),
       assert(crossAxisAlignment != null),
       assert(verticalDirection != null),
       assert(crossAxisAlignment != CrossAxisAlignment.baseline || textBaseline != null),
       super(key: key, children: children);
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->