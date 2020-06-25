# MaterialApp

MaterialApp是根部件

主要的功能用于设置路由表 和设置任务管理窗口界面所看到应用名字

Creates a MaterialApp.

## 继承
``` dart

class MaterialApp extends StatefulWidget
```
## demo
``` dart

class JiZhang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        <!-- 主题颜色 -->
        primarySwatch: Colors.yellow,
        <!--  -->
        colorScheme: ColorS
      ),
      home: Scaffold(

      ),
    );
  }
}
```
## 构造

``` dart
const MaterialApp({
    Key key,
    this.navigatorKey,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
  }) : assert(routes != null),
       assert(navigatorObservers != null),
       assert(title != null),
       assert(debugShowMaterialGrid != null),
       assert(showPerformanceOverlay != null),
       assert(checkerboardRasterCacheImages != null),
       assert(checkerboardOffscreenLayers != null),
       assert(showSemanticsDebugger != null),
       assert(debugShowCheckedModeBanner != null),
       super(key: key);
```

## 关联

[ScrollConfiguration](./ScrollConfiguration.html)

[WidgetsApp](./WidgetsApp.html)

[GridPaper](./GridPaper.html)

[AnimatedTheme](./AnimatedTheme.html)

[GlowingOverscrollIndicator](./GlowingOverscrollIndicator.html)

[FloatingActionButton](./FloatingActionButton.html)

## 参数
<table>
<thead>
<tr>
<th>字段</th>
<th>类型</th>
</tr>
</thead>
<tbody>
<tr>
<td>navigatorKey（导航键）</td>
<td>GlobalKey&lt;NavigatorState&gt;</td>
</tr>
<tr>
<td>home（主页）</td>
<td>Widget</td>
</tr>
<tr>
<td>routes（路由）</td>
<td>Map&lt;String, WidgetBuilder&gt;</td>
</tr>
<tr>
<td>initialRoute（初始路由）</td>
<td>String</td>
</tr>
<tr>
<td>onGenerateRoute（生成路由）</td>
<td>RouteFactory</td>
</tr>
<tr>
<td>onUnknownRoute（未知路由）</td>
<td>RouteFactory</td>
</tr>
<tr>
<td>navigatorObservers（导航观察器）</td>
<td>List&lt;NavigatorObserver&gt;</td>
</tr>
<tr>
<td>builder（建造者）</td>
<td>TransitionBuilder</td>
</tr>
<tr>
<td>title（任务管理窗口界面所看到应用名字）</td>
<td>String</td>
</tr>
<tr>
<td>onGenerateTitle（生成标题）</td>
<td>GenerateAppTitle</td>
</tr>
<tr>
<td>color（颜色）</td>
<td>Color</td>
</tr>
<tr>
<td>theme（主题）</td>
<td>ThemeData</td>
</tr>
<tr>
<td>locale(地点)</td>
<td>Locale</td>
</tr>
<tr>
<td>localizationsDelegates（本地化委托）</td>
<td>Iterable&lt;LocalizationsDelegate&lt;dynamic&gt;&gt;</td>
</tr>
<tr>
<td>localeResolutionCallback（区域分辨回调）</td>
<td>LocaleResolutionCallback</td>
</tr>
<tr>
<td>supportedLocales（支持区域）</td>
<td>Iterable&lt;Locale&gt;</td>
</tr>
<tr>
<td>debugShowMaterialGrid（调试显示材质网格）</td>
<td>bool</td>
</tr>
<tr>
<td>showPerformanceOverlay（显示性能叠加）</td>
<td>bool</td>
</tr>
<tr>
<td>checkerboardRasterCacheImages（棋盘格光栅缓存图像）</td>
<td>bool</td>
</tr>
<tr>
<td>checkerboardOffscreenLayers（棋盘格层）</td>
<td>bool</td>
</tr>
<tr>
<td>showSemanticsDebugger（显示语义调试器）</td>
<td>bool</td>
</tr>
<tr>
<td>debugShowCheckedModeBanner（调试显示检查模式横幅）</td>
<td>bool</td>
</tr>
</tbody>
</table>
