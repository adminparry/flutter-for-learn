import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  MainAxisAlignment _count = MainAxisAlignment.start;
  CrossAxisAlignment _cross = CrossAxisAlignment.start;

  MainAxisAlignment get main => _count;
  CrossAxisAlignment get cross => _cross;

  void changeMain(val) {
    _count = val;

    notifyListeners();
  }
  void changeCross(val) {
    _cross = val;
    notifyListeners();
  }

}

class BusIdAndName with ChangeNotifier, DiagnosticableTreeMixin {
  String _name;
  String _id;
  String get id => _id;
  String get name => _name;

  void set id(val) {
    _id = val;
    notifyListeners();
  }
  void set name(val) {
    _name = val;
    notifyListeners();
  }
}

class ColumnProvider extends Counter {

}