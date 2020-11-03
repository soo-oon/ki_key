import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'menu_viewmodel.dart';

class MenuView extends StatefulWidget {
  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List<String> intros = ["assets/images/인트로.png"];
  String intro = "assets/images/인트로.png";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuViewModel>.reactive(
      builder: (context, model, child) => Column(
        children: [
          Container(
            child: Text("dkdkdkdk\t dkdkdkdk\tdkdkdkdk\tdkdkdk"),
          )
        ],
      ),
      viewModelBuilder: () => MenuViewModel(),
    );
  }
}
