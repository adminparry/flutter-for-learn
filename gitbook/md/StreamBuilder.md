# StreamBuilder

/// Creates a new [StreamBuilder] that builds itself based on the latest

/// snapshot of interaction with the specified [stream] and whose build

/// strategy is given by [builder].

##### 继承
``` dart
class StreamBuilder<T> extends StreamBuilderBase<T, AsyncSnapshot<T>>  extends StatefulWidget 
```
##### 构造

``` dart
 const StreamBuilder({
    Key key,
    this.initialData,
    Stream<T> stream,
    @required this.builder,
  }) : assert(builder != null),
       super(key: key, stream: stream);
```
##### 关联

<!-- [Stack](./Stack.md)

[Container](./Container.md)

[ScaleTransition](./ScaleTransition.md)

[AnimatedBuilder](./AnimatedBuilder.md)

[RefreshProgressIndicator](./RefreshProgressIndicator.md)

[Positioned](./Positioned.html) -->

