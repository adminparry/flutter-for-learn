# FloatingActionButton

创建圆形浮动操作按钮。

##### 继承
``` dart
class FloatingActionButton extends StatelessWidget
```
##### 构造

``` dart
const FloatingActionButton({
    Key key,
    this.child,
    this.tooltip,
    this.foregroundColor,
    this.backgroundColor,
    this.heroTag = const _DefaultHeroTag(),
    this.elevation,
    this.highlightElevation,
    this.disabledElevation,
    @required this.onPressed,
    this.mini = false,
    this.shape,
    this.clipBehavior = Clip.none,
    this.materialTapTargetSize,
    this.isExtended = false,
  }) : assert(elevation == null || elevation >= 0.0),
       assert(highlightElevation == null || highlightElevation >= 0.0),
       assert(disabledElevation == null || disabledElevation >= 0.0),
       assert(mini != null),
       assert(isExtended != null),
       _sizeConstraints = mini ? _kMiniSizeConstraints : _kSizeConstraints,
       super(key: key);
```
##### 关联

[RawMaterialButton](./RawMaterialButton.html)

[MergeSemantics](./MergeSemantics.html)

[Tooltip](./Tooltip.html)

[Hero](./Hero.html)

[IconTheme](./IconTheme.html)

[IconThemeData](./IconThemeData.html)