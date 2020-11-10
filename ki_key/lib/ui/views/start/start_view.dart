import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/button_widget.dart';
import 'package:ki_key/ui/views/start/start_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatefulWidget {
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  List<String> intros = [
    "assets/images/인트로.png",
    "assets/images/1.png",
    "assets/images/인트로.png",
    "assets/images/1.png",
    "assets/images/인트로.png",
  ];
  Color progressColor = white;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Dismissible(
          onDismissed: (DismissDirection direction) {
            setState(() {
              model.setCounter(
                  direction == DismissDirection.endToStart ? 1 : -1);
              if (model.counter > 0 && intros.length - 1 > index) index++;
              if (model.counter < 0 && 0 < index) index--;
            });
          },
          key: ValueKey(model.counter),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      intros[index],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 150,
                child: Row(
                  children: [
                    index == 0 ? _circleProgress(red) : _circleProgress(white),
                    index == 1 ? _circleProgress(red) : _circleProgress(white),
                    index == 2 ? _circleProgress(red) : _circleProgress(white),
                    index == 3 ? _circleProgress(red) : _circleProgress(white),
                    index == 4 ? _circleProgress(red) : _circleProgress(white),
                  ],
                ),
              ),
              index == 4
                  ? Positioned(
                      bottom: 70,
                      child: GestureDetector(
                        onTap: () => model.navigateToLogin(),
                        child: Container(
                          child: Text(
                            "로그인하기",
                            style: TextStyle(
                              fontSize: 50,
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}

Widget _circleProgress(Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: black,
          style: BorderStyle.solid,
        ),
        shape: BoxShape.circle,
        color: color,
      ),
    ),
  );
}
