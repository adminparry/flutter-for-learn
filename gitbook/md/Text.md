# Text

单一格式的文本

## demo
``` dart

```

## 继承
``` dart
class Text extends StatelessWidget
```
## 构造

``` dart
 const Text(
    this.data, {
    Key key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  }) : assert(
         data != null,
         'A non-null String must be provided to a Text widget.',
       ),
       textSpan = null,
       super(key: key);

const Text.rich(
    this.textSpan, {
    Key key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  }) : assert(
         textSpan != null,
         'A non-null TextSpan must be provided to a Text.rich widget.',
       ),
       data = null,
       super(key: key);
```
##### 关联

[RichText](./RichText.md)

[TextSpan](./TextSpan.md)

[Semantics](./Semantics.md)

[ExcludeSemantics](./ExcludeSemantics.md)

[TextStyle](./TextStyle.md)

## 参数

``` dart

this.style : 样式修饰,
this.strutStyle,
this.textAlign: 文本对齐方式,
this.textDirection: 文本书写方向,
this.locale,
this.softWrap： 是否自动换行,
this.overflow,
this.textScaleFactor,
this.maxLines,
this.semanticsLabel,

```
