import 'package:auto_route/auto_route_annotations.dart';
import 'package:ki_key/ui/views/login/login_view.dart';
import 'package:ki_key/ui/views/option/option_view.dart';
import 'package:ki_key/ui/views/test/test_view.dart';

import 'ui/views/home/home_view.dart';
import 'ui/views/start/start_view.dart';
import 'ui/views/store/store_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: TestView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: OptionView),
    MaterialRoute(page: StoreView),
  ],
)
class $Router {}
