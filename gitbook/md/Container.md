# Container

创建一个小部件，它组合了常见的绘制、定位和调整小部件大小。

##### 继承
``` dart
class Container extends StatelessWidget
```
##### 构造

``` dart
Container({
    Key key,
    this.alignment,
    this.padding,
    Color color,
    Decoration decoration,
    this.foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    this.margin,
    this.transform,
    this.child,
  }) : assert(margin == null || margin.isNonNegative),
       assert(padding == null || padding.isNonNegative),
       assert(decoration == null || decoration.debugAssertIsValid()),
       assert(constraints == null || constraints.debugAssertIsValid()),
       assert(color == null || decoration == null,
         'Cannot provide both a color and a decoration\n'
         'The color argument is just a shorthand for "decoration: new BoxDecoration(color: color)".'
       ),
       decoration = decoration ?? (color != null ? BoxDecoration(color: color) : null),
       constraints =
        (width != null || height != null)
          ? constraints?.tighten(width: width, height: height)
            ?? BoxConstraints.tightFor(width: width, height: height)
          : constraints,
       super(key: key);
```
##### 例子
``` dart
Container(
  child: Text("container"),//子部件
      alignment: Alignment.topLeft,//对齐方式
      padding: EdgeInsets.all(20.0),
      transform: Matrix4.diagonal3Values(0, 0, 0),//转换方式
      color: Colors.amber,//背景颜色
      width: 200.0,//宽度
      height: 200.0,//高度
      decoration: BoxDecoration(//装饰
        border: Border.all(
          color: Colors.amber,
          width: 2.0
        )
      ),
      foregroundDecoration: BoxDecoration(//前景装饰
        border: Border.all(
          color: Colors.blue,
          width: 2.0
        )
      ),
)
```

##### 构建
``` dart
@override
  Widget build(BuildContext context) {
    Widget current = child;

    if (child == null && (constraints == null || !constraints.isTight)) {
      current = LimitedBox(
        maxWidth: 0.0,
        maxHeight: 0.0,
        child: ConstrainedBox(constraints: const BoxConstraints.expand()),
      );
    }

    if (alignment != null)
      current = Align(alignment: alignment, child: current);

    final EdgeInsetsGeometry effectivePadding = _paddingIncludingDecoration;
    if (effectivePadding != null)
      current = Padding(padding: effectivePadding, child: current);

    if (decoration != null)
      current = DecoratedBox(decoration: decoration, child: current);

    if (foregroundDecoration != null) {
      current = DecoratedBox(
        decoration: foregroundDecoration,
        position: DecorationPosition.foreground,
        child: current,
      );
    }

    if (constraints != null)
      current = ConstrainedBox(constraints: constraints, child: current);

    if (margin != null)
      current = Padding(padding: margin, child: current);

    if (transform != null)
      current = Transform(transform: transform, child: current);

    return current;
  }
```
##### 关联
[对齐方式](./AlignmentGeometry.html)

[转换方式](./Matrix4.html)

[BoxDecoration](./BoxDecoration.md)

[LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html)
