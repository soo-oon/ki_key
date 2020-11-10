import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class VersionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '버전정보',
          style: TextStyle(
              fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
        ),
      ),
      body: VersionView(),
    );
  }
}

class VersionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[
        Text(
          '현재버전 0.2.3',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.grey,
              fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          '최신버전 0.2.3',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.grey,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 20.0,),
        Text(
          '현재 최신버전입니다',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            color: mainColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
