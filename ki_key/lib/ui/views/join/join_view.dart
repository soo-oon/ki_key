import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/button_widget.dart';
import 'package:ki_key/shared/widgets/input_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:ki_key/ui/views/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class JoinView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: mainColor),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 20,
                ),
                Text(
                  "회원가입",
                  style: TextStyle(
                    fontSize: 27.45,
                  ),
                ),
                SizedBox(
                  height: size.height / 20,
                ),
                InputWidget(
                  controller: model.fullNameController,
                  hintText: '이름',
                  fieldFocusNode: model.fullNameFocusNode,
                  nextFocusNode: model.phoneFocusNode,
                  color: model.fieldColor,
                  hintTextColor: model.textColor,
                ),
                verticalSpaceSmall,
                InputWidget(
                  controller: model.addressController,
                  hintText: '주소',
                  fieldFocusNode: model.addressFocusNode,
                  nextFocusNode: model.emailFocusNode,
                  color: model.fieldColor,
                  hintTextColor: model.textColor,
                ),
                verticalSpaceSmall,
                InputWidget(
                  controller: model.emailController,
                  hintText: '이메일',
                  fieldFocusNode: model.emailFocusNode,
                  nextFocusNode: model.passwordFocusNode,
                  color: model.fieldColor,
                  hintTextColor: model.textColor,
                ),
                verticalSpaceSmall,
                InputWidget(
                  controller: model.password2Controller,
                  password: true,
                  hintText: '비밀번호',
                  fieldFocusNode: model.passwordFocusNode,
                  nextFocusNode: model.password2FocusNode,
                  color: model.fieldColor,
                  hintTextColor: model.textColor,
                ),
                verticalSpaceSmall,
                InputWidget(
                  controller: model.password2Controller,
                  password: true,
                  hintText: '비밀번호 확인',
                  fieldFocusNode: model.password2FocusNode,
                  color: model.fieldColor,
                  hintTextColor: model.textColor,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                      child: Text(
                        "비밀번호는 최소 6자리 이상입니다.",
                        style: TextStyle(color: black, fontSize: 10.0),
                      ),
                    ),
                  ],
                ),
                verticalSpaceLarge,
                CustomButton(
                  title: '회원가입',
                  textColor: black,
                  onTap: () => model.navigateToLogin(),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                      child: Text(
                        "이미 회원이십니까?",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                      child: InkWell(
                        onTap: () {
                          model.navigateToLogin();
                        },
                        child: Text(
                          "로그인하기",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
