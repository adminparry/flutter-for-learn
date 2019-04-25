# MediaQuery

继承
``` dart
class MediaQuery extends InheritedWidget
```
构造
``` dart
const MediaQuery({
    Key key,
    @required this.data,
    @required Widget child,
  }) : assert(child != null),
       assert(data != null),
       super(key: key, child: child);
```