# KeyedSubtree

创建一个构建其子级的小部件。

##### 继承
``` dart
class KeyedSubtree extends StatelessWidget 
```
##### 构造

``` dart
const KeyedSubtree({
    Key key,
    @required this.child,
  }) : assert(child != null),
       super(key: key);

  /// Creates a KeyedSubtree for child with a key that's based on the child's existing key or childIndex.
  factory KeyedSubtree.wrap(Widget child, int childIndex) {
    final Key key = child.key != null ? ValueKey<Key>(child.key) : ValueKey<int>(childIndex);
    return KeyedSubtree(key: key, child: child);
  }

```
##### 关联


