import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:ki_key/helper.dart';

class HomeViewModel extends BaseViewModel {
  final PointService _pointService = locator<PointService>();
  final NavigationService _navigationService = locator<NavigationService>();
  int _point;
  int get point => _point;

  TextEditingController _searchText = TextEditingController();
  TextEditingController get searchText => _searchText;
  Future navigateToOption() async {
    await _navigationService.navigateTo(Routes.optionView);
  }

  void init() {
    _point = _pointService.point;
  }
}
