# Image

一个显示图片的widget

##### 继承
``` dart
class Image extends StatefulWidget 
```
##### 构造

``` dart
const Image({
    Key key,
    @required this.image,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.filterQuality = FilterQuality.low,
  }) : assert(image != null),
       assert(alignment != null),
       assert(repeat != null),
       assert(filterQuality != null),
       assert(matchTextDirection != null),
       super(key: key);
```
##### 关联

[Semantics](./Semantics.md)

[RawImage](./RawImage.md)
