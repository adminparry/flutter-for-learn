# RichText

##### 继承
``` dart
class RichText extends LeafRenderObjectWidget
```
##### 构造
``` dart
const RichText({
    Key key,
    @required this.text,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
    this.textScaleFactor = 1.0,
    this.maxLines,
    this.locale,
    this.strutStyle,
  }) : assert(text != null),
       assert(textAlign != null),
       assert(softWrap != null),
       assert(overflow != null),
       assert(textScaleFactor != null),
       assert(maxLines == null || maxLines > 0),
       super(key: key);
```