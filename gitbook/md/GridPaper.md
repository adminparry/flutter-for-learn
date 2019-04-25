# GridPaper

继承

``` dart
class GridPaper extends StatelessWidget 
```

构造

``` dart
const GridPaper({
    Key key,
    this.color = const Color(0x7FC3E8F3),
    this.interval = 100.0,
    this.divisions = 2,
    this.subdivisions = 5,
    this.child,
  }) : assert(divisions > 0, 'The "divisions" property must be greater than zero. If there were no divisions, the grid paper would not paint anything.'),
       assert(subdivisions > 0, 'The "subdivisions" property must be greater than zero. If there were no subdivisions, the grid paper would not paint anything.'),
       super(key: key);

```

关联

[CustomPaint](./CustomPaint.html)