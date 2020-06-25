# RawMaterialButton


基于[Semantics]、[Material]和[InkWell]小部件创建按钮。

##### 继承
``` dart
class RawMaterialButton extends StatefulWidget 
```
##### 构造

``` dart
 const RawMaterialButton({
    Key key,
    @required this.onPressed,
    this.onHighlightChanged,
    this.textStyle,
    this.fillColor,
    this.highlightColor,
    this.splashColor,
    this.elevation = 2.0,
    this.highlightElevation = 8.0,
    this.disabledElevation = 0.0,
    this.padding = EdgeInsets.zero,
    this.constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
    this.shape = const RoundedRectangleBorder(),
    this.animationDuration = kThemeChangeDuration,
    this.clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    this.child,
  }) : materialTapTargetSize = materialTapTargetSize ?? MaterialTapTargetSize.padded,
       assert(shape != null),
       assert(elevation != null && elevation >= 0.0),
       assert(highlightElevation != null && highlightElevation >= 0.0),
       assert(disabledElevation != null && disabledElevation >= 0.0),
       assert(padding != null),
       assert(constraints != null),
       assert(animationDuration != null),
       assert(clipBehavior != null),
       super(key: key);
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->