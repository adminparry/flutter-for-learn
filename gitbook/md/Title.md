
继承
``` dart
class Title extends StatelessWidget
```
构造
``` dart
Title({
    Key key,
    this.title = '',
    @required this.color,
    @required this.child,
  }) : assert(title != null),
       assert(color != null && color.alpha == 0xFF),
       super(key: key);
```
关联

[SystemChrome](./SystemChrome.html)
