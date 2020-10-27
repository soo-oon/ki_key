import 'package:cap/shared/widgets/input_widget.dart';
import 'package:flutter/material.dart';

import 'intro.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Center(
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroScreen(
                            images: [
                              "assets/images/업체리스트-1.jpg",
                              "assets/images/업체주문소개-1.jpg",
                              "assets/images/업체주문소개2-1.jpg",
                              "assets/images/업체주문소개정보-1.jpg",
                              "assets/images/업체주문소개리뷰-1.jpg",
                              "assets/images/업체주문소개내역-1.jpg",
                              "assets/images/업체주문소개내역2-1.jpg",
                              "assets/images/업체주문대기-1.jpg",
                            ],
                          ),
                        ));
                  },
                  child: Text("검색화면"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroScreen(
                            images: [
                              "assets/images/페이지광고-1.jpg",
                              "assets/images/페이지광고2-1.jpg",
                              "assets/images/페이지광고3-1.jpg",
                              "assets/images/페이지광고4-1.jpg",
                              "assets/images/페이지광고5-1.jpg",
                              "assets/images/페이지광고6-1.jpg",
                              "assets/images/페이지광고7-1.jpg",
                              "assets/images/페이지광고8-1.jpg",
                              "assets/images/페이지광고9-1.jpg",
                            ],
                          ),
                        ));
                  },
                  child: Text("페이지 광고"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroScreen(
                            images: [
                              "assets/images/동영상광고-1.jpg",
                            ],
                          ),
                        ));
                  },
                  child: Text("동영상 광고"),
                ),
              ],
            ),
          ),
          Row(
            children: [
              InputWidget(
                controller: null,
                hintText: "대리운전 택시 배달 검색",
              ),
            ],
          )
        ],
      ),
    );
  }
}
