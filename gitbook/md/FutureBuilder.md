# FutureBuilder

/// Creates a widget that builds itself based on the latest snapshot of

/// interaction with a [Future]

##### 继承
``` dart
class FutureBuilder<T> extends StatefulWidget
```
##### 构造

``` dart
  const FutureBuilder({
    Key key,
    this.future,
    this.initialData,
    @required this.builder,
  }) : assert(builder != null),
       super(key: key);
```
##### 关联

<!-- [Stack](./Stack.md)

[Container](./Container.md)

[ScaleTransition](./ScaleTransition.md)

[AnimatedBuilder](./AnimatedBuilder.md)

[RefreshProgressIndicator](./RefreshProgressIndicator.md)

[Positioned](./Positioned.html) -->

