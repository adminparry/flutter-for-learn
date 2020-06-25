# BoxDecoration



##### 继承
``` dart
class BoxDecoration extends Decoration extends Diagnosticable
```
##### 构造

``` dart
const BoxDecoration({
    this.color,
    this.image,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape = BoxShape.rectangle,
  }) : assert(shape != null),
       assert(
         backgroundBlendMode == null || color != null || gradient != null,
         'backgroundBlendMode applies to BoxDecoration\'s background color or '
         'gradient, but no color or gradient was provided.'
       );
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->
