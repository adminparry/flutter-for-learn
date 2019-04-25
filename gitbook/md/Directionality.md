# Directionality

继承
``` dart
class Directionality extends InheritedWidget
```
构造
```dart
const Directionality({
    Key key,
    @required this.textDirection,
    @required Widget child,
  }) : assert(textDirection != null),
       assert(child != null),
       super(key: key, child: child);
```
关联
