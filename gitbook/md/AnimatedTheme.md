# AnimatedTheme

创建动画主题。

继承
``` dart
class AnimatedTheme extends ImplicitlyAnimatedWidget
```
构造
``` dart
 const AnimatedTheme({
    Key key,
    @required this.data,
    this.isMaterialAppTheme = false,
    Curve curve = Curves.linear,
    Duration duration = kThemeAnimationDuration,
    @required this.child,
  }) : assert(child != null),
       assert(data != null),
       super(key: key, curve: curve, duration: duration);
```
关联

[Theme](./Theme.html)