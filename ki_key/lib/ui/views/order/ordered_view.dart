import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class OrderedView extends StatefulWidget {
  @override
  _OrderedViewState createState() => _OrderedViewState();
}

class _OrderedViewState extends State<OrderedView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 48,
        flexibleSpace: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpaceMedium,
              Text(
                "주문완료",
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpaceTiny,
              verticalBar(size.width * 0.9, 1, white),
              verticalSpaceTiny,
              Text(
                "접수 대기 중입니다.",
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "매장 주문 확인중",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: mainColor,
                fontSize: 30,
              ),
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/qr.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
