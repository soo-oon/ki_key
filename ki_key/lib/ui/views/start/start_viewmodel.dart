import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../locator.dart';
import '../../../router.gr.dart';

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }

  Future navigateToLogin() async {
    await _navigationService.navigateTo(Routes.loginView);
  }

  int _counter = 0;
  int get counter => _counter;
  setCounter(int counter) => _counter += counter;
}
