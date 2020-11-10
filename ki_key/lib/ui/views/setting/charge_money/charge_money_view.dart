import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'charge_money_viewModel.dart';
import 'package:ki_key/ui/views/setting/charge_money/charge_money_viewModel.dart';


final messageTextController = TextEditingController();
class ChargeMoneyView extends StatelessWidget {
  String certificationMessage;

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
      body: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CallBank(),
            ChargeMoney(),
            CertificationNumber(getCertificationMessage: certificationMessage,),
            SizedBox(height: 50.0,),
            Image.asset('assets/images/logo.png'),
          ],
        ),
      ),
    );
  }
}

class CallBank extends StatelessWidget {
  String bankName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '은행 : ',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Container(
          width: 50.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(

          ),

          //Container( MessageTextFieldDecoration),
        ),
      ],
    );
  }
}

class ChargeMoney extends StatelessWidget {
  String bankName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '충전금액 : ',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Container(
          width: 50.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(

          ),
          //Container( MessageTextFieldDecoration),
        ),
      ],
    );
  }
}

class CertificationNumber extends StatelessWidget {
  String getCertificationMessage;
  int textLength;

  CertificationNumber({this.getCertificationMessage});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '인증번호 : ',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Container(
          width: 50.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(
            maxLines: 1,
          ),
          //Container( MessageTextFieldDecoration),
        ),
        //MessageBubble(certification: getCertificationMessage),
      ],
    );
  }
}

//


class MessageBubble extends StatelessWidget {
  //String bank;
  //int charge;
  String certification;

  MessageBubble({this.certification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            elevation: 5.0, //그림자
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                certification.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
