import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provoider/Counter.dart';

class MyProvider extends StatelessWidget {
  final Widget child;


  MyProvider({this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BusIdAndName()),
        ChangeNotifierProvider(create: (_) => ColumnProvider()),

      ],
      child: child,
    );
  }
}
