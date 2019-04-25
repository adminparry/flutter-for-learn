# SafeArea

``` dart
class SafeArea extends StatelessWidget
```
``` dart
const SafeArea({
    Key key,
    this.left = true,
    this.top = true,
    this.right = true,
    this.bottom = true,
    this.minimum = EdgeInsets.zero,
    @required this.child,
  }) : assert(left != null),
       assert(top != null),
       assert(right != null),
       assert(bottom != null),
       super(key: key);
```