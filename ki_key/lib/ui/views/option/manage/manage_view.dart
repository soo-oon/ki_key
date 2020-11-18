import 'package:flutter/material.dart';
import 'package:ki_key/ui/views/store/store_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ManagementView extends StatefulWidget {
  @override
  _ManagementViewState createState() => _ManagementViewState();
}

class _ManagementViewState extends State<ManagementView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<StoreViewModel>.reactive(
      viewModelBuilder: () => StoreViewModel(),
      builder: (context, model, child) => Scaffold(),
    );
  }
}
