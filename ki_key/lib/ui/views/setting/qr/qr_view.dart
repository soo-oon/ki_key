import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';

class QRView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'QR',
          style: TextStyle(
            fontSize: 20.0,
            color: black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '정재학',
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              child:Image.asset('assets/images/qr.png'),
            ),
          ],
        ),
      ),
    );
  }
}
