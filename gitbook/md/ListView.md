# ListView

``` dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new TodoScreen(
          todos: new List.generate(200, (i){
                int index = i + 1;

                return new Todo(
                  '我是第 $index  项标题',
                  '我是内容 $index',
                );
          }
          )
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodoScreen extends StatelessWidget {
  final List<Todo> todos;

  TodoScreen({Key key, @required this.todos}) : super(key: key);

  void onItemTapHandler(BuildContext context, index){
    Navigator.push(
      context, new MaterialPageRoute(
      builder: (context) => new DetailScreen(todo: todos[index]),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第一个页面'),
      ),
      body: CupertinoScrollbar(child: new ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {

            return new ListTile(
              title: new Text(todos[index].title),
              subtitle: new Text(todos[index].description),
              onTap: (){
                onItemTapHandler(context,index);
              },
            );
          }))

    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;

  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${todo.title}"),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Text('${todo.description}'),
      ),
    );
  }
}
```
## ListView 嵌套问题
