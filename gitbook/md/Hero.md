# Hero


##### 继承
``` dart
class Hero extends StatefulWidget 
```
##### 构造

``` dart
const Hero({
    Key key,
    @required this.tag,
    this.createRectTween,
    this.flightShuttleBuilder,
    this.placeholderBuilder,
    this.transitionOnUserGestures = false,
    @required this.child,
  }) : assert(tag != null),
       assert(transitionOnUserGestures != null),
       assert(child != null),
       super(key: key);


```
##### 关联

[SizedBox](./SizedBox.md)

[KeyedSubtree](./KeyedSubtree.md)



