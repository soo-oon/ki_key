import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../locator.dart';
import '../../../router.gr.dart';

class LoginViewModel extends BaseViewModel {
  final fieldColor = Colors.white.withOpacity(0.2);
  final textColor = Colors.black;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final phoneCodeController = TextEditingController();
  final addressController = TextEditingController();

  final fullNameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final password2FocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final phoneCodeFocusNode = FocusNode();
  final addressFocusNode = FocusNode();

  final NavigationService _navigationService = locator<NavigationService>();
  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }

  Future navigateToLogin() async {
    await _navigationService.navigateTo(Routes.loginView);
  }

  Future navigateToJoin() async {
    await _navigationService.navigateTo(Routes.joinView);
  }
}
