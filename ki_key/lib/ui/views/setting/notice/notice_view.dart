import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class NoticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '공지사항',
          style: TextStyle(
              fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
        ),
      ),
      //body: NoticeView(),
    );
  }
}

class NoticeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('as'),
    );
  }
}
