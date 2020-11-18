// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'ui/views/ad/add_ad_view.dart';
import 'ui/views/ad/send_ad_view.dart';
import 'ui/views/home/home_view.dart';
import 'ui/views/join/join_view.dart';
import 'ui/views/login/login_view.dart';
import 'ui/views/option/check_order/check_order_view.dart';
import 'ui/views/option/check_order/result_order_view.dart';
import 'ui/views/option/function/function_view.dart';
import 'ui/views/option/manage/manage_view.dart';
import 'ui/views/option/option_view.dart';
import 'ui/views/order/order_view.dart';
import 'ui/views/setting/ad_script/ad_script_view.dart';
import 'ui/views/setting/change_info/change_info_view.dart';
import 'ui/views/setting/charge_money/charge_money_view.dart';
import 'ui/views/setting/money_usage_history/money_usage_history_view.dart';
import 'ui/views/setting/notice/notice_view.dart';
import 'ui/views/setting/qr/qr_view.dart';
import 'ui/views/setting/screen/screen_view.dart';
import 'ui/views/setting/service_center/service_center_view.dart';
import 'ui/views/setting/sound/sound_view.dart';
import 'ui/views/setting/version_info/version_info_view.dart';
import 'ui/views/start/start_view.dart';
import 'ui/views/store/store_view.dart';
import 'ui/views/test/test_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String testView = '/test-view';
  static const String loginView = '/login-view';
  static const String optionView = '/option-view';
  static const String storeView = '/store-view';
  static const String sendView = '/send-view';
  static const String adScriptView = '/ad-script-view';
  static const String changeInfo = '/change-info';
  static const String chargeMoneyView = '/charge-money-view';
  static const String moneyUsageHistory = '/money-usage-history';
  static const String noticeScreen = '/notice-screen';
  static const String qRView = '/q-rView';
  static const String settingScreen = '/setting-screen';
  static const String serviceCenter = '/service-center';
  static const String soundSetting = '/sound-setting';
  static const String versionInfo = '/version-info';
  static const String addAdView = '/add-ad-view';
  static const String joinView = '/join-view';
  static const String orderView = '/order-view';
  static const String functionalView = '/functional-view';
  static const String managementView = '/management-view';
  static const String checkView = '/check-view';
  static const String resultOrderView = '/result-order-view';
  static const all = <String>{
    startupView,
    homeView,
    testView,
    loginView,
    optionView,
    storeView,
    sendView,
    adScriptView,
    changeInfo,
    chargeMoneyView,
    moneyUsageHistory,
    noticeScreen,
    qRView,
    settingScreen,
    serviceCenter,
    soundSetting,
    versionInfo,
    addAdView,
    joinView,
    orderView,
    functionalView,
    managementView,
    checkView,
    resultOrderView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.testView, page: TestView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.optionView, page: OptionView),
    RouteDef(Routes.storeView, page: StoreView),
    RouteDef(Routes.sendView, page: SendView),
    RouteDef(Routes.adScriptView, page: AdScriptView),
    RouteDef(Routes.changeInfo, page: ChangeInfo),
    RouteDef(Routes.chargeMoneyView, page: ChargeMoneyView),
    RouteDef(Routes.moneyUsageHistory, page: MoneyUsageHistory),
    RouteDef(Routes.noticeScreen, page: NoticeScreen),
    RouteDef(Routes.qRView, page: QRView),
    RouteDef(Routes.settingScreen, page: SettingScreen),
    RouteDef(Routes.serviceCenter, page: ServiceCenter),
    RouteDef(Routes.soundSetting, page: SoundSetting),
    RouteDef(Routes.versionInfo, page: VersionInfo),
    RouteDef(Routes.addAdView, page: AddAdView),
    RouteDef(Routes.joinView, page: JoinView),
    RouteDef(Routes.orderView, page: OrderView),
    RouteDef(Routes.functionalView, page: FunctionalView),
    RouteDef(Routes.managementView, page: ManagementView),
    RouteDef(Routes.checkView, page: CheckView),
    RouteDef(Routes.resultOrderView, page: ResultOrderView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    TestView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TestView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    OptionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OptionView(),
        settings: data,
      );
    },
    StoreView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StoreView(),
        settings: data,
      );
    },
    SendView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SendView(),
        settings: data,
      );
    },
    AdScriptView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AdScriptView(),
        settings: data,
      );
    },
    ChangeInfo: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChangeInfo(),
        settings: data,
      );
    },
    ChargeMoneyView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChargeMoneyView(),
        settings: data,
      );
    },
    MoneyUsageHistory: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MoneyUsageHistory(),
        settings: data,
      );
    },
    NoticeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NoticeScreen(),
        settings: data,
      );
    },
    QRView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => QRView(),
        settings: data,
      );
    },
    SettingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingScreen(),
        settings: data,
      );
    },
    ServiceCenter: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ServiceCenter(),
        settings: data,
      );
    },
    SoundSetting: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SoundSetting(),
        settings: data,
      );
    },
    VersionInfo: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VersionInfo(),
        settings: data,
      );
    },
    AddAdView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddAdView(),
        settings: data,
      );
    },
    JoinView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => JoinView(),
        settings: data,
      );
    },
    OrderView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrderView(),
        settings: data,
      );
    },
    FunctionalView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FunctionalView(),
        settings: data,
      );
    },
    ManagementView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ManagementView(),
        settings: data,
      );
    },
    CheckView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CheckView(),
        settings: data,
      );
    },
    ResultOrderView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ResultOrderView(),
        settings: data,
      );
    },
  };
}
