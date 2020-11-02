import 'package:flutter/material.dart';
import 'package:ki_key/ui/views/store/store_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<StoreViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Column(
          children: [
            Container(
              height: size.height / 6,
              child: Text("블라블라"),
            )
          ],
        ),
      ),
      viewModelBuilder: () => StoreViewModel(),
    );
  }
}
