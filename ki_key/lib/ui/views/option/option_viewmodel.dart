import 'package:stacked/stacked.dart';

class OptionViewModel extends BaseViewModel {
  int _store;
  int get store => _store;

  void init() {
    _store = 0;
  }

  void increaseStore() {
    _store++;
    notifyListeners();
  }
}
