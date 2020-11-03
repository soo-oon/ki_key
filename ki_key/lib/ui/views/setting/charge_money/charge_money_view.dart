import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';

class ChargeMoneyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '포인트 충전',
          style: TextStyle(
            fontSize: 20.0,
            color: black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            // padding: EdgeInsets.only(
            //     top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '은행 : ',
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '충전금액 : ',
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '인증번호 : ',
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child:Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
    );
  }
}
