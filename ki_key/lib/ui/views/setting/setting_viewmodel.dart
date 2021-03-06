import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../locator.dart';
import '../../../router.gr.dart';

class SettingViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }

  Future navigateToOrder() async {
    await _navigationService.navigateTo(Routes.orderView);
  }
}
