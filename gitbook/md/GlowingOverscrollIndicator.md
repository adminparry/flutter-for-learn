# GlowingOverscrollIndicator


Creates a visual indication that a scroll view has overscrolled.

创建滚动视图过度滚动的可视指示。

##### 继承
``` dart
class GlowingOverscrollIndicator extends StatefulWidget 
```
##### 构造

``` dart
const GlowingOverscrollIndicator({
    Key key,
    this.showLeading = true,
    this.showTrailing = true,
    @required this.axisDirection,
    @required this.color,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.child,
  }) : assert(showLeading != null),
       assert(showTrailing != null),
       assert(axisDirection != null),
       assert(color != null),
       assert(notificationPredicate != null),
       super(key: key);
```
##### 关联

[NotificationListener](./NotificationListener.md)

[RepaintBoundary](./RepaintBoundary.md)

[CustomPaint](./CustomPaint.md)

<!-- [DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->
