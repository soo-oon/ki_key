import 'package:flutter/material.dart';

class Point with ChangeNotifier {
  int _myPoint = 0;
  int get myPoint => _myPoint;
  setPoint(int point) {
    _myPoint = point;
    notifyListeners();
  }

  increasePoint(int incPoint) {
    _myPoint += incPoint;
    notifyListeners();
  }
}
