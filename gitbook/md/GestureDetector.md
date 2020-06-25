# GestureDetector


##### 继承
``` dart
class Tooltip extends StatefulWidget 
```
##### 构造

``` dart
const Tooltip({
    Key key,
    @required this.message,
    this.height = 32.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.verticalOffset = 24.0,
    this.preferBelow = true,
    this.excludeFromSemantics = false,
    this.child,
  }) : assert(message != null),
       assert(height != null),
       assert(padding != null),
       assert(verticalOffset != null),
       assert(preferBelow != null),
       assert(excludeFromSemantics != null),
       super(key: key);

```
##### 关联

[GestureDetector](./GestureDetector.md)

[Semantics](./Semantics.md)

