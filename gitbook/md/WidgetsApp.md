# WidgetsApp.md

继承
``` dart
class WidgetsApp extends StatefulWidget

```
构造
``` dart
WidgetsApp({ // can't be const because the asserts use methods on Iterable :-(
    Key key,
    this.navigatorKey,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.initialRoute,
    this.pageRouteBuilder,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.textStyle,
    @required this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowWidgetInspector = false,
    this.debugShowCheckedModeBanner = true,
    this.inspectorSelectButtonBuilder,
  }) : assert(navigatorObservers != null),
       assert(routes != null),
       assert(
         home == null ||
         !routes.containsKey(Navigator.defaultRouteName),
         'If the home property is specified, the routes table '
         'cannot include an entry for "/", since it would be redundant.'
       ),
       assert(
         builder != null ||
         home != null ||
         routes.containsKey(Navigator.defaultRouteName) ||
         onGenerateRoute != null ||
         onUnknownRoute != null,
         'Either the home property must be specified, '
         'or the routes table must include an entry for "/", '
         'or there must be on onGenerateRoute callback specified, '
         'or there must be an onUnknownRoute callback specified, '
         'or the builder property must be specified, '
         'because otherwise there is nothing to fall back on if the '
         'app is started with an intent that specifies an unknown route.'
       ),
       assert(
         (home != null ||
          routes.isNotEmpty ||
          onGenerateRoute != null ||
          onUnknownRoute != null)
         ||
         (builder != null &&
          navigatorKey == null &&
          initialRoute == null &&
          navigatorObservers.isEmpty),
         'If no route is provided using '
         'home, routes, onGenerateRoute, or onUnknownRoute, '
         'a non-null callback for the builder property must be provided, '
         'and the other navigator-related properties, '
         'navigatorKey, initialRoute, and navigatorObservers, '
         'must have their initial values '
         '(null, null, and the empty list, respectively).'
       ),
       assert(
         builder != null ||
         onGenerateRoute != null ||
         pageRouteBuilder != null,
         'If neither builder nor onGenerateRoute are provided, the '
         'pageRouteBuilder must be specified so that the default handler '
         'will know what kind of PageRoute transition to build.'
       ),
       assert(title != null),
       assert(color != null),
       assert(supportedLocales != null && supportedLocales.isNotEmpty),
       assert(showPerformanceOverlay != null),
       assert(checkerboardRasterCacheImages != null),
       assert(checkerboardOffscreenLayers != null),
       assert(showSemanticsDebugger != null),
       assert(debugShowCheckedModeBanner != null),
       assert(debugShowWidgetInspector != null),
       super(key: key);
```
关联

[MediaQuery](./MediaQuery.html)

[Localizations](./Localizations.html)

[Builder](./Builder.html)

[Title](./Title.html)