import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyProvider extends StatelessWidget {
  final Widget child;


  MyProvider({this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: child,
    );
  }
}
/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
int _count = 0;
int get count => _count;

void increment() {
_count++;
notifyListeners();
}

/// Makes `Counter` readable inside the devtools by listing all of its properties
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
super.debugFillProperties(properties);
properties.add(IntProperty('count', count));
}
}

class Count extends StatelessWidget {
  const Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return FlatButton(
      child: Text("${counter.count}"),
//      onPressed: () => context.read<Counter>().increment(),
      onPressed: () => Provider.of<Counter>(context).increment(),
    );
    return Text(
      /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
//        '${context.watch<Counter>().count}',
        '${counter.count}',
        style: Theme.of(context).textTheme.headline);

  }
}

class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return FlatButton(
      child: Text("langjing"),
//      onPressed: () => context.read<Counter>().increment(),
      onPressed: () => Provider.of<Counter>(context).increment(),
    );
  }
}