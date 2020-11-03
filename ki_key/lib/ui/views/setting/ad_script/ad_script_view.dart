import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/ui/views/setting/ad_script/ad_script_viewModel.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class AdScriptView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Text(
            '광고 스크랩 리스트',
            style: TextStyle(
              fontSize: 20.0,
              color: black,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Column(
            children: <Widget>[
              Container(
                //padding: EdgeInsets.only(bottom: 30.0),
                height: 30.0,
                child: CallFlatButton(
                  location: '현대자동차 이재숙',
                ),
              ),
              verticalBar(450.0, 5.0, Colors.lightBlueAccent),
              Container(
                height: 30.0,
                child: CallFlatButton(
                  location: '신신짬뽕 상인점',
                ),
              ),
              verticalBar(450.0, 5.0, Colors.lightBlueAccent),
              Container(
                height: 30.0,
                child: CallFlatButton(
                  location: '신당동 떡복이 이수점',
                ),
              ),
              verticalBar(450.0, 5.0, Colors.lightBlueAccent),
              Container(
                height: 30.0,
                child: CallFlatButton(
                  location: '현대자동차 이재숙',
                ),
              ),
              verticalBar(450.0, 5.0, Colors.lightBlueAccent),
              Container(
                height: 30.0,
                child: CallFlatButton(
                  location: '신당동 떡복이 이수점',
                ),
              ),
              verticalBar(450.0, 5.0, Colors.lightBlueAccent),
              Container(
                height: 30.0,
                child: CallFlatButton(
                  location: '현대자동차 이재숙',
                ),
              ),
              verticalBar(450.0, 5.0, Colors.lightBlueAccent),
            ],
          ),
        ));
  }
}

class CallFlatButton extends StatelessWidget {
  String location;

  CallFlatButton({this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //decoration:MessageContainerDecoration,
          children: <Widget>[
            Text(
              '$location',
              style: TextStyle(
                fontSize: 15.0,
                color: black,
              ),
            ),
            Container(
              width: 60.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FlatButton(
                child: Text(
                  '공유',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              width: 60.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FlatButton(
                child: Text(
                  '재생',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              width: 60.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FlatButton(
                child: Text(
                  '정보',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              width: 60.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FlatButton(
                child: Text(
                  '삭제',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
