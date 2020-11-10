import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/text_button_widget.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class ServiceCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '고객센터',
          style: TextStyle(
              fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
        ),
      ),
      body: ServiceCenterView(),
    );
  }
}

class ServiceCenterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30.0, left: 20.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Inform(print: '도움말',),
              TextButtonWidget(text:'도움말', fontSize: 20.0, onTap: (){},),
              Inform(print: '문의하기',),
              SizedBox(height: 20.0,),
              Inform(print: '이용약관',),
              Inform(print: '위치기반서비스이용약관',),
              Inform(print: '개인정보처리방침',),
              Inform(print: '운영정책',),
              Inform(print: '오픈소스라이센스',),
              SizedBox(height: 20.0,),
              PrintText(print: '회사소개',),
              PrintText(print: '상호.키키',),
              PrintText(print: '대표.정재학',),
              PrintText(print: '주소.',),
              PrintText(print: '제주특별자치도 제주시 첨단로242(영평동)',),
              PrintText(print: '홈페이지_www.kakaocorp.com',),
              PrintText(print: '사업자등록번호',),
              PrintText(print: '통신판매신고번호',),

            ],
          ),
        ),
      ],
    );
  }
}

class PrintText extends StatelessWidget {
  String print;

  PrintText({this.print});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      child: Text(
        print,
        style: TextStyle(
          fontSize: 20.0,
          color: black,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class Inform extends StatelessWidget {
  String print;

  Inform({this.print});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Text(
        print,
        style: TextStyle(
          fontSize: 20.0,
          color: black,
          fontWeight: FontWeight.w900,
        ),
        //textAlign: TextAlign.left,
      ),
    );
  }
}