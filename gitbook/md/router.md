# routes

## 路由跳转
``` dart
Navigator.push( 
    context,
    MaterialPageRoute(builder: (context) {
        return NewRoute();
    })
);
```

## 路由传参
``` dart
class A extends StatelessWidget {
    build(){
        return FlatButton(
            onPress:(){
                Navigator.of(context).pushNamed("b", arguments: "参数");
            }
        )
        
    }
}
class B extends StatelessWidget {
    build(context){
        print(ModalRoute.of(context).settings.arguments); 
    }
}


```
## materialApp

``` dart

MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  //注册路由表
  routes:{
   "new_page":(context) => NewRoute(),
    ... // 省略其它路由注册信息
  } ,
  home: MyHomePage(title: 'Flutter Demo Home Page'),
);

```

## onGenerateRoute
``` dart
MaterialApp(
  ... //省略无关代码
  onGenerateRoute:(RouteSettings settings){
      return MaterialPageRoute(builder: (context){
           String routeName = settings.name;
       // 如果访问的路由页需要登录，但当前未登录，则直接返回登录页路由，
       // 引导用户登录；其它情况则正常打开路由。
     }
   );
  }
);
```