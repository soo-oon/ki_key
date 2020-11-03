import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'charge_money_viewModel.dart';
import 'package:ki_key/ui/views/setting/charge_money/charge_money_viewModel.dart';

class ChargeMoneyView extends StatelessWidget {
  String messageText;
  final messageTextController = TextEditingController();

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
            Container(
              child: CallBank(),
            ),
            Container(
              child: ChargeMoney(),
            ),
            Container(
              child: CertificationNumber(),
            ),
            SizedBox(height: 50.0,),
            Container(
              child: Image.asset('assets/images/logo.png'),
            ),
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
  String bankName;

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

          ),
        ),
      ],
    );
  }
}

// class MessageBubble extends StatelessWidget {
//   String bank;
//   int charge;
//   int certification;
//
//   MessageBubble({this.bank, this.certification, this.charge});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           Material(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30.0),
//               bottomLeft: Radius.circular(30.0),
//               bottomRight: Radius.circular(30.0),
//               topRight: Radius.circular(30.0),
//             ),
//             elevation: 5.0, //그림자
//             color: Colors.lightBlueAccent,
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//               child: Text(
//                 bank,
//                 style: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 15.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
