import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Seller with ChangeNotifier {
  int _myStore = 0;
  int get myStore => _myStore;
  setStore(int store) {
    _myStore = store;
    notifyListeners();
  }

  increaseStore() async {
    _myStore += 1;
    notifyListeners();
  }
}
