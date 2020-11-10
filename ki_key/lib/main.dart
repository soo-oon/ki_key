import 'package:flutter/material.dart' hide Router;
import 'package:ki_key/locator.dart';
import 'package:ki_key/ui/views/start/start_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'router.gr.dart';
import 'shared/sharedColors.dart';
void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.startupView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: ThemeData(
        primaryColor: mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartupView(),
    );
  }
}
