import 'package:flutter/material.dart';
import 'package:ki_key/ui/views/setting/setting_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SettingView extends StatelessWidget {
  final String title;
  final Widget body;

  const SettingView({Key key, this.title, this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<SettingViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: body,
      ),
      viewModelBuilder: () => SettingViewModel(),
    );
  }
}
