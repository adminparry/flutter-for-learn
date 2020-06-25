# RefreshIndicator

##### 继承
``` dart
class RefreshIndicator extends StatefulWidget
```
##### 构造

``` dart
  const RefreshIndicator({
    Key key,
    @required this.child,
    this.displacement = 40.0,
    @required this.onRefresh,
    this.color,
    this.backgroundColor,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.semanticsLabel,
    this.semanticsValue,
  }) : assert(child != null),
       assert(onRefresh != null),
       assert(notificationPredicate != null),
       super(key: key)
```
##### 关联

[Stack](./Stack.md)

[Container](./Container.md)

[ScaleTransition](./ScaleTransition.md)

[AnimatedBuilder](./AnimatedBuilder.md)

[RefreshProgressIndicator](./RefreshProgressIndicator.md)

[Positioned](./Positioned.html)

