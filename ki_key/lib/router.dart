import 'package:auto_route/auto_route_annotations.dart';
import 'package:ki_key/ui/views/login/login_view.dart';
import 'package:ki_key/ui/views/option/option_view.dart';
import 'package:ki_key/ui/views/test/test_view.dart';

import 'ui/views/home/home_view.dart';
import 'ui/views/start/start_view.dart';
import 'ui/views/store/store_view.dart';

import 'package:ki_key/ui/views/setting/ad_script/ad_script_view.dart';
import 'package:ki_key/ui/views/setting/change_info/change_info_view.dart';
import 'package:ki_key/ui/views/setting/charge_money/charge_money_view.dart';
import 'package:ki_key/ui/views/setting/money_usage_history/money_usage_history_view.dart';
import 'package:ki_key/ui/views/setting/notice/notice_view.dart';
import 'package:ki_key/ui/views/setting/qr/qr_view.dart';
import 'package:ki_key/ui/views/setting/screen/screen_view.dart';
import 'package:ki_key/ui/views/setting/service_center/service_center_view.dart';
import 'package:ki_key/ui/views/setting/sound/sound_view.dart';
import 'package:ki_key/ui/views/setting/version_info/version_info_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: TestView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: OptionView),
    MaterialRoute(page: StoreView),

    MaterialRoute(page: AdScriptView),
    MaterialRoute(page: ChangeInfo),
    MaterialRoute(page: ChargeMoneyView),
    MaterialRoute(page: MoneyUsageHistory),
    MaterialRoute(page: NoticeScreen),
    MaterialRoute(page: QRView),
    MaterialRoute(page: SettingScreen),
    MaterialRoute(page: ServiceCenter),
    MaterialRoute(page: SoundSetting),
    MaterialRoute(page: VersionInfo),
  ],
)
class $Router {}
