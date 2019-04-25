# InkResponse

##### 继承
``` dart
class InkResponse extends StatefulWidget
```
##### 构造
``` dart
const InkResponse({
    Key key,
    this.child,
    this.onTap,
    this.onTapDown,
    this.onTapCancel,
    this.onDoubleTap,
    this.onLongPress,
    this.onHighlightChanged,
    this.containedInkWell = false,
    this.highlightShape = BoxShape.circle,
    this.radius,
    this.borderRadius,
    this.customBorder,
    this.highlightColor,
    this.splashColor,
    this.splashFactory,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
  }) : assert(containedInkWell != null),
       assert(highlightShape != null),
       assert(enableFeedback != null),
       assert(excludeFromSemantics != null),
       super(key: key);
```
##### 关联
``` dart
class InkWell extends InkResponse {
  /// Creates an ink well.
  ///
  /// Must have an ancestor [Material] widget in which to cause ink reactions.
  ///
  /// The [enableFeedback] and [excludeFromSemantics] arguments must not be
  /// null.
  const InkWell({
    Key key,
    Widget child,
    GestureTapCallback onTap,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureTapDownCallback onTapDown,
    GestureTapCancelCallback onTapCancel,
    ValueChanged<bool> onHighlightChanged,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    double radius,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    bool enableFeedback = true,
    bool excludeFromSemantics = false,
  }) : super(
    key: key,
    child: child,
    onTap: onTap,
    onDoubleTap: onDoubleTap,
    onLongPress: onLongPress,
    onTapDown: onTapDown,
    onTapCancel: onTapCancel,
    onHighlightChanged: onHighlightChanged,
    containedInkWell: true,
    highlightShape: BoxShape.rectangle,
    highlightColor: highlightColor,
    splashColor: splashColor,
    splashFactory: splashFactory,
    radius: radius,
    borderRadius: borderRadius,
    customBorder: customBorder,
    enableFeedback: enableFeedback,
    excludeFromSemantics: excludeFromSemantics,
  );
}
```
