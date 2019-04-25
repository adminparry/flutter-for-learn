# Align

继承
``` dart
class Align extends SingleChildRenderObjectWidget
```
构造
``` dart
const Align({
    Key key,
    this.alignment = Alignment.center,
    this.widthFactor,
    this.heightFactor,
    Widget child,
  }) : assert(alignment != null),
       assert(widthFactor == null || widthFactor >= 0.0),
       assert(heightFactor == null || heightFactor >= 0.0),
       super(key: key, child: child);
```
关联

```
class Center extends Align {
  /// Creates a widget that centers its child.
  const Center({ Key key, double widthFactor, double heightFactor, Widget child })
    : super(key: key, widthFactor: widthFactor, heightFactor: heightFactor, child: child);
}
```