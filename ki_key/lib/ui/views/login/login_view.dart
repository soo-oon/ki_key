import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/input_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Color(0xff3d6bfc),
        body: Container(
          decoration: BoxDecoration(color: mainColor),
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                //_buildHeader("Soon", size.height),
                InputWidget(
                  controller: null,
                  hintText: '아이디',
                  color: white.withOpacity(0.3),
                ),
                verticalSpaceSmall,
                InputWidget(
                  controller: null,
                  hintText: '비밀번호',
                  color: white.withOpacity(0.3),
                  password: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                _boxWidget("로그인", size, white, () {
                  model.navigateToHome();
                }),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "아이디 혹은 비밀번호를 잊으셨나요?",
                  style: TextStyle(fontSize: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: size.width * 0.9,
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                _boxWidget("새로운 계정 만들기", size, white, () {
                  model.navigateToJoin();
                }),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}

Widget _boxWidget(String info, Size size, Color color, Function onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 50,
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            info,
          )
        ],
      ),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 3,
                spreadRadius: 5,
                offset: Offset(0, 3))
          ]),
    ),
  );
}
