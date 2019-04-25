# ListTile

##### 继承
``` dart
class ListTile extends StatelessWidget
```
##### 构造
``` dart
const ListTile({
    Key key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.selected = false,
  }) : assert(isThreeLine != null),
       assert(enabled != null),
       assert(selected != null),
       assert(!isThreeLine || subtitle != null),
       super(key: key);
```

##### 关联

[InkWell](./InkResponse.html)

[SafeArea](./SafeArea.html)

[Semantics](./Semantics.html)

