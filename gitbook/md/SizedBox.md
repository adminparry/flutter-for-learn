# SizedBox

``` dart
class SizedBox extends SingleChildRenderObjectWidget
```

``` dart
const SizedBox({ Key key, this.width, this.height, Widget child })
    : super(key: key, child: child);

  /// Creates a box that will become as large as its parent allows.
  const SizedBox.expand({ Key key, Widget child })
    : width = double.infinity,
      height = double.infinity,
      super(key: key, child: child);

  /// Creates a box that will become as small as its parent allows.
  const SizedBox.shrink({ Key key, Widget child })
    : width = 0.0,
      height = 0.0,
      super(key: key, child: child);

  /// Creates a box with the specified size.
  SizedBox.fromSize({ Key key, Widget child, Size size })
    : width = size?.width,
      height = size?.height,
      super(key: key, child: child);
```