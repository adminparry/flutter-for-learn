# flutter中的样式

## 超出隐藏

``` dart

```
## 滤镜


## 宽高
ConstrainedBox、UnconstrainedBox、SizedBox、AspectRatio、FractionallySizedBox、LimitedBox、Container

``` dart
 ConstrainedBox(
    constraints: BoxConstraints.tightFor(), 
    child: Text("asdf"),
)
```
## 边框
DecoratedBox
``` dart
DecoratedBox(
    decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black, 
            width: 1, 
            style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Text("asd"),
)
```
## 阴影
``` dart
DecoratedBox(
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.red,
              offset: Offset.zero,
              blurRadius: 6.0, //阴影模糊程度
              spreadRadius: 6.0 //阴影扩散程度
          ),
        ]
    ),
    child: Text("asd"),
)
```
## 渐变
``` dart
DecoratedBox(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors:[Colors.yellow, Colors.red],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 1],
            tileMode: TileMode.repeated
        )
    ),
    child: Text("asd"),
)
```
## 边距

Padding

``` dart
Padding(
    padding: EdgeInsets.all(20.0),
    child: Text("asdf"),
)
```
## 背景颜色和图片

``` dart
 DecoratedBox(
    position: DecorationPosition.background,
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/images/WechatIMG21.png"),
        repeat: ImageRepeat.noRepeat,
        fit: BoxFit.contain,
        alignment: Alignment.center,
        centerSlice: null,

        matchTextDirection: false,
        colorFilter: ColorFilter.linearToSrgbGamma()
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(20.0),
    child: Container(
        child: Text("asdf"),
    ),
    ),
)
```
## 前景
``` dart
 DecoratedBox(
    position: DecorationPosition.foreground,
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/images/WechatIMG21.png"),
        repeat: ImageRepeat.noRepeat,
        fit: BoxFit.contain,
        alignment: Alignment.center,
        centerSlice: null,

        matchTextDirection: false,
        colorFilter: ColorFilter.linearToSrgbGamma()
    ),
    ),
    child: Padding(
    padding: EdgeInsets.all(20.0),
    child: Container(
        child: Text("asdf"),
    ),
    ),
)
```
## 矩阵变换
TransForm(
    transform:
    origin:
    alignment:,
    transformHitTests:
)

``` dart
<!-- 平移 -->
Transform.translate(
    offset: Offset(0, 0),
    child: Text("translate"),
)
<!-- 缩小 -->
Transform.scale(
    alignment: Alignment.center, //相对于坐标系原点的对齐方式
    transform: Matrix4.diagonal3Values(0,0,0),
    origin: null,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.deepOrange,
      child: const Text('Apartment for rent!'),
    ),
)
<!-- 倾斜 -->
Transform(
    alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
    transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
    child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.deepOrange,
        child: const Text('Apartment for rent!'),
    ),
)
<!-- 旋转 -->
Transform(
    alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
    transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
    child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.deepOrange,
        child: const Text('Apartment for rent!'),
    ),
)
```

