# TextStyle

##### 继承
``` dart
class TextStyle extends Diagnosticable
```

##### 构造

``` dart
const TextStyle({
    this.inherit = true,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    String fontFamily,
    List<String> fontFamilyFallback,
    String package,
  }) : fontFamily = package == null ? fontFamily : 'packages/$package/$fontFamily',
       _fontFamilyFallback = fontFamilyFallback,
       _package = package,
       assert(inherit != null),
       assert(color == null || foreground == null, _kColorForegroundWarning),
       assert(backgroundColor == null || background == null, _kColorBackgroundWarning);
```