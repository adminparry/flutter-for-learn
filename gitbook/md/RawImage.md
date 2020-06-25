# RawImage

创建显示图像的小部件。

##### 继承
``` dart
class RawImage extends LeafRenderObjectWidget
```
##### 构造

``` dart
const RawImage({
    Key key,
    this.image,
    this.width,
    this.height,
    this.scale = 1.0,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.invertColors = false,
    this.filterQuality = FilterQuality.low,
  }) : assert(scale != null),
       assert(alignment != null),
       assert(repeat != null),
       assert(matchTextDirection != null),
       super(key: key);
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->	