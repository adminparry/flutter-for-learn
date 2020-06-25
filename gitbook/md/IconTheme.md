# IconTheme

创建一个图标主题，该主题控制子代小部件。

##### 继承
``` dart
class IconTheme extends InheritedWidget
```
##### 构造

``` dart
const IconTheme({
    Key key,
    @required this.data,
    @required Widget child,
  }) : assert(data != null),
       assert(child != null),
       super(key: key, child: child);
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->