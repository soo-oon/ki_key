import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../locator.dart';
import '../../../router.gr.dart';

class AddAdViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  Future navigateToOption() async {
    await _navigationService.navigateTo(Routes.optionView);
  }

  Future navigateToOrder() async {
    await _navigationService.navigateTo(Routes.orderView);
  }

  Future navigateToSend() async {
    await _navigationService.navigateTo(Routes.sendView);
  }
}
