# MaterialApp

继承性
``` dart

class MaterialApp extends StatefulWidget
```

参数

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

返回

``` dart
@override
  Widget build(BuildContext context) {
    Widget result = WidgetsApp(
      key: GlobalObjectKey(this),
      navigatorKey: widget.navigatorKey,
      navigatorObservers: _navigatorObservers,
        pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) =>
            MaterialPageRoute<T>(settings: settings, builder: builder),
      home: widget.home,
      routes: widget.routes,
      initialRoute: widget.initialRoute,
      onGenerateRoute: widget.onGenerateRoute,
      onUnknownRoute: widget.onUnknownRoute,
      builder: (BuildContext context, Widget child) {
        // Use a light theme, dark theme, or fallback theme.
        ThemeData theme;
        final ui.Brightness platformBrightness = MediaQuery.platformBrightnessOf(context);
        if (platformBrightness == ui.Brightness.dark && widget.darkTheme != null) {
          theme = widget.darkTheme;
        } else if (widget.theme != null) {
          theme = widget.theme;
        } else {
          theme = ThemeData.fallback();
        }

        return AnimatedTheme(
          data: theme,
          isMaterialAppTheme: true,
          child: widget.builder != null
              ? Builder(
                  builder: (BuildContext context) {
                    // Why are we surrounding a builder with a builder?
                    //
                    // The widget.builder may contain code that invokes
                    // Theme.of(), which should return the theme we selected
                    // above in AnimatedTheme. However, if we invoke
                    // widget.builder() directly as the child of AnimatedTheme
                    // then there is no Context separating them, and the
                    // widget.builder() will not find the theme. Therefore, we
                    // surround widget.builder with yet another builder so that
                    // a context separates them and Theme.of() correctly
                    // resolves to the theme we passed to AnimatedTheme.
                    return widget.builder(context, child);
                  },
                )
              : child,
        );
      },
      title: widget.title,
      onGenerateTitle: widget.onGenerateTitle,
      textStyle: _errorTextStyle,
      // The color property is always pulled from the light theme, even if dark
      // mode is activated. This was done to simplify the technical details
      // of switching themes and it was deemed acceptable because this color
      // property is only used on old Android OSes to color the app bar in
      // Android's switcher UI.
      //
      // blue is the primary color of the default theme
      color: widget.color ?? widget.theme?.primaryColor ?? Colors.blue,
      locale: widget.locale,
      localizationsDelegates: _localizationsDelegates,
      localeResolutionCallback: widget.localeResolutionCallback,
      localeListResolutionCallback: widget.localeListResolutionCallback,
      supportedLocales: widget.supportedLocales,
      showPerformanceOverlay: widget.showPerformanceOverlay,
      checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
      showSemanticsDebugger: widget.showSemanticsDebugger,
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
      inspectorSelectButtonBuilder: (BuildContext context, VoidCallback onPressed) {
        return FloatingActionButton(
          child: const Icon(Icons.search),
          onPressed: onPressed,
          mini: true,
        );
      },
    );

    assert(() {
      if (widget.debugShowMaterialGrid) {
        result = GridPaper(
          color: const Color(0xE0F9BBE0),
          interval: 8.0,
          divisions: 2,
          subdivisions: 1,
          child: result,
        );
      }
      return true;
    }());

    return ScrollConfiguration(
      behavior: _MaterialScrollBehavior(),
      child: result,
    );
  }
```
关联

[ScrollConfiguration](./ScrollConfiguration.html)

[WidgetsApp](./WidgetsApp.html)

[GridPaper](./GridPaper.html)

[AnimatedTheme](./AnimatedTheme.html)

GlowingOverscrollIndicator