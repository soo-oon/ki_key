import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class PointService with ReactiveServiceMixin {
  RxValue<int> _point = RxValue<int>(initial: 0);

  PointService() {
    listenToReactiveValues([_point]);
  }

  int get point => _point.value;

  void incrementCounter() {
    _point.value++;
  }

  void doubleCounter() {
    _point.value *= 2;
  }
}
