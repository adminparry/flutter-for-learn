# flutter_screenutil

一个ui设计尺寸适配 根据客户端的屏幕和像素密度

## demo


``` dart
Container(
width: ScreenUtil().setWidth(50),
height:ScreenUtil().setHeight(200),
)
```

dart sdk>=2.6

``` dart
Container(
width: 50.w,
height:200.h
)
```