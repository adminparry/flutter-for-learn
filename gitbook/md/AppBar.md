# AppBar

app头部导航 该组件对屏幕刘海屏进行了适配 

## demo
``` dart
AppBar(
  title: Text("学习flutter"),
)
```

## 继承
``` dart
class AppBar extends StatefulWidget implements PreferredSizeWidget 	
```
## 构造

``` dart
AppBar({
    Key key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shape,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.actionsIconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
  }) : assert(automaticallyImplyLeading != null),
       assert(elevation == null || elevation >= 0.0),
       assert(primary != null),
       assert(titleSpacing != null),
       assert(toolbarOpacity != null),
       assert(bottomOpacity != null),
       preferredSize = Size.fromHeight(kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0)),
       super(key: key);
```
##### 关联

<!-- [LimitedBox](./LimitedBox.md)

[Align](./Align.md)

[Padding](./Padding.md)

[DecoratedBox](./DecoratedBox.md)

[ConstrainedBox](./ConstrainedBox.md)

[Transform](./Transform.html) -->
