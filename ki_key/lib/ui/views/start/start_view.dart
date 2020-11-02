import 'package:flutter/material.dart';
import 'package:ki_key/shared/widgets/button_widget.dart';
import 'package:ki_key/ui/views/start/start_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatefulWidget {
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  List<String> intros = ["assets/images/인트로.png"];
  String intro = "assets/images/인트로.png";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Dismissible(
        onDismissed: (DismissDirection direction) {
          setState(() {
            model.setCounter(direction == DismissDirection.endToStart ? 1 : -1);
          });
        },
        key: ValueKey(model.counter),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(intro)))),
            Positioned(
              top: 500,
              left: 100,
              child: GestureDetector(
                onTap: () => model.navigateToHome(),
                child: Text("움직쓰"),
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
