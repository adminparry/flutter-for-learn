# Localizations

继承
``` dart
class Localizations extends StatefulWidget
```
构造
```dart
Localizations({
    Key key,
    @required this.locale,
    @required this.delegates,
    this.child,
  }) : assert(locale != null),
       assert(delegates != null),
       assert(delegates.any((LocalizationsDelegate<dynamic> delegate) => delegate is LocalizationsDelegate<WidgetsLocalizations>)),
       super(key: key);
```
关联

[Semantics](./Semantics.html)

[Directionality](./Directionality.html)