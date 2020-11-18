import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../locator.dart';
import '../../../router.gr.dart';

class OptionViewModel extends BaseViewModel {
  int _store;
  int get store => _store;

  final NavigationService _navigationService = locator<NavigationService>();
  Future navigateToQr() async {
    await _navigationService.navigateTo(Routes.qRView);
  }

  Future navigateToFunction() async {
    await _navigationService.navigateTo(Routes.functionalView);
  }

  Future navigateToManagement() async {
    await _navigationService.navigateTo(Routes.managementView);
  }

  Future navigateToCheck() async {
    await _navigationService.navigateTo(Routes.checkView);
  }

  Future navigateToAdd() async {
    await _navigationService.navigateTo(Routes.addAdView);
  }

  Future navigateToAd() async {
    await _navigationService.navigateTo(Routes.adScriptView);
  }

  Future navigateToChargeMoney() async {
    await _navigationService.navigateTo(Routes.chargeMoneyView);
  }

  Future navigateToMoneyHistory() async {
    await _navigationService.navigateTo(Routes.moneyUsageHistory);
  }

  Future navigateToSettingScreen() async {
    await _navigationService.navigateTo(Routes.settingScreen);
  }

  Future navigateToSettingSound() async {
    await _navigationService.navigateTo(Routes.soundSetting);
  }

  Future navigateToNotice() async {
    await _navigationService.navigateTo(Routes.noticeScreen);
  }

  Future navigateToChangeInfo() async {
    await _navigationService.navigateTo(Routes.changeInfo);
  }

  Future navigateToVersionInfo() async {
    await _navigationService.navigateTo(Routes.versionInfo);
  }

  Future navigateToService() async {
    await _navigationService.navigateTo(Routes.serviceCenter);
  }

  void init() {
    _store = 1;
  }

  void increaseStore() {
    _store++;
    notifyListeners();
  }
}
