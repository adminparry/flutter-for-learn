# flutter 中个单位

flutter 中的单位都是dp

``` dart
<!-- pixel:屏幕密度比 -->
dp = px / pixel;

```

所以首先你拿来设计稿的时候是px的 然后要做个适配获取屏幕密度后计算得到

``` dart
class TransformPxToDp {
  static MediaQueryData mq;

  static double dpr;

<!-- 设计图的宽高 -->
  static int designWidth;
  static int designHeight;
  <!-- flutter获取的宽高 -->
  static double flutterWidth;
  static double flutterHeight;



  static void init(BuildContext context, {width, height}){
    mq = MediaQuery.of(context);
    dpr = mq.devicePixelRatio;
    flutterWidth = mq.size.width;
    flutterHeight = mq.size.height;

    designHeight = height;
    designWidth = width;

  }


  static num width(num px){
    return flutterWidth * dpr / designWidth * px;
  }
  static num height(num px){
    return flutterHeight * dpr / designHeight * px;
  }

}
```

## 获取屏幕密度

``` dart

MediaQueryData devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

typedef int CalcDp = Function(int px);


```
## 获取屏幕宽高

``` dart
MediaQueryData width = MediaQuery.of(context).size.width;
MediaQueryData height = MediaQuery.of(context).size.height;


```
## 获取顶部和底部的安全距离
``` dart
MediaQueryData top = MediaQuery.of(context).padding.top;
MediaQueryData bottom = MediaQuery.of(context).padding.bottom;


```

## 获取字体的放大比例

``` dart

MediaQueryData scale = MediaQuery.of(context).textScaleFactor;

```
