import 'package:flutter/material.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:stacked/stacked.dart';

import '../../../../shared/sharedColors.dart';
import '../../../../shared/sharedColors.dart';
import 'storeInfo_viewmodel.dart';

class StoreInfoView extends StatefulWidget {
  @override
  _StoreInfoViewState createState() => _StoreInfoViewState();
}

class _StoreInfoViewState extends State<StoreInfoView> {
  List<String> intros = ["assets/images/인트로.png"];
  String intro = "assets/images/인트로.png";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StoreInfoViewModel>.reactive(
      builder: (context, model, child) => BoxWidget(
        child: Text("시발"),
        color: mainColor,
        height: 30,
        width: 300,
      ),
      viewModelBuilder: () => StoreInfoViewModel(),
    );
  }
}
