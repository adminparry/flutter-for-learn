# Transform

创建转换其子级的小部件

``` dart
class Transform extends SingleChildRenderObjectWidget
```
```
const Transform({
    Key key,
    @required this.transform,
    this.origin,
    this.alignment,
    this.transformHitTests = true,
    Widget child,
  }) : assert(transform != null),
       super(key: key, child: child);
```