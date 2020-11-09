// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'ui/views/home/home_view.dart';
import 'ui/views/join/join_view.dart';
import 'ui/views/login/login_view.dart';
import 'ui/views/option/option_view.dart';
import 'ui/views/order/order_view.dart';
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
  static const String joinView = '/join-view';
  static const String orderView = '/order-view';
  static const all = <String>{
    startupView,
    homeView,
    testView,
    loginView,
    optionView,
    storeView,
    joinView,
    orderView,
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
    RouteDef(Routes.joinView, page: JoinView),
    RouteDef(Routes.orderView, page: OrderView),
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
  };
}
