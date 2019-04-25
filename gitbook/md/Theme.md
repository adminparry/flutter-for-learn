# Theme 

继承
``` dart
class Theme extends StatelessWidget
```
构造
``` dart
const Theme({
    Key key,
    @required this.data,
    this.isMaterialAppTheme = false,
    @required this.child,
  }) : assert(child != null),
       assert(data != null),
       super(key: key);
```
关联

[CupertinoTheme](./CupertinoTheme.html)

[MaterialBasedCupertinoThemeData](./MaterialBasedCupertinoThemeData.html)

[IconTheme](./IconTheme.html)