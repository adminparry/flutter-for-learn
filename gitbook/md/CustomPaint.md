# CustomPaint

创建委托其绘制的小部件。

继承
``` dart
class CustomPaint extends SingleChildRenderObjectWidget 
```
构造
``` dart

  const CustomPaint({
    Key key,
    this.painter,
    this.foregroundPainter,
    this.size = Size.zero,
    this.isComplex = false,
    this.willChange = false,
    Widget child,
  }) : assert(size != null),
       assert(isComplex != null),
       assert(willChange != null),
       super(key: key, child: child);

```
关联