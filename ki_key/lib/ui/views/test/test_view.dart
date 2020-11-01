import 'package:flutter/material.dart';
import 'package:ki_key/ui/views/test/test_viewmodel.dart';
import 'package:stacked/stacked.dart';

class TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('Startup View'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
      viewModelBuilder: () => TestViewModel(),
    );
  }
}
