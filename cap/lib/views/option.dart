import 'package:cap/main.dart';
import 'package:cap/models/models.dart';
import 'package:cap/shared/sharedColors.dart';
import 'package:cap/shared/widgets/button_widget.dart';
import 'package:cap/shared/widgets/ui_helpers.dart';
import 'package:cap/views/sample_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'intro.dart';

class OptionScreen extends StatefulWidget {
  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var myStore = Provider.of<Seller>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("설정"),
          backgroundColor: mainColor,
        ),
        backgroundColor: secColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myStore.myStore == 0
                    ? Column(
                        children: [
                          CustomButton(
                            color: mainColor.withOpacity(0.3),
                            title: "광고하기",
                            onTap: () {
                              setState(() {
                                myStore.increaseStore();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IntroScreen(
                                              images: [
                                                "assets/images/설정광고하기-1.jpg",
                                                "assets/images/설정광고하기2-1.jpg",
                                                "assets/images/설정광고하기3-1.jpg",
                                                "assets/images/설정광고하기4-1.jpg",
                                                "assets/images/설정광고하기5-1.jpg",
                                                "assets/images/설정광고하기6-1.jpg",
                                              ],
                                            )));
                              });
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: size.width * 0.9,
                            height: 1,
                            color: black,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Container(
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                                color: mainColor.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(60.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "ASDF134252ASD 싱싱한통닭",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    children: [
                                      InkWell(
                                          child: Text(
                                            "광고관리",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              myStore.increaseStore();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          IntroScreen(
                                                            images: [
                                                              "assets/images/설정광고관리-1.jpg",
                                                              "assets/images/설정광고관리2-1.jpg",
                                                              "assets/images/설정광고관리3-1.jpg",
                                                              "assets/images/설정광고관리4-1.jpg",
                                                              "assets/images/설정광고관리5-1.jpg",
                                                              "assets/images/설정광고관리6-1.jpg",
                                                              "assets/images/설정광고관리7-1.jpg",
                                                              "assets/images/설정광고관리8-1.jpg",
                                                              "assets/images/설정광고관리9-1.jpg",
                                                              "assets/images/설정광고관리10-1.jpg",
                                                              "assets/images/설정광고관리11-1.jpg",
                                                            ],
                                                          )));
                                            });
                                          }),
                                      verticalSpaceTiny,
                                      InkWell(
                                          child: Text(
                                            "매출정산",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {}),
                                      verticalSpaceTiny,
                                      InkWell(
                                          child: Text(
                                            "주문접수",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {}),
                                      verticalSpaceTiny,
                                      InkWell(
                                          child: Text(
                                            "기능설정",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {}),
                                      verticalSpaceTiny,
                                      InkWell(
                                          child: Text(
                                            "공지사항",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {}),
                                      verticalSpaceTiny,
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          verticalSpaceSmall,
                          CustomButton(
                            color: mainColor.withOpacity(0.3),
                            title: "광고 추가",
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IntroScreen(
                                              images: [
                                                "assets/images/설정광고하기-1.jpg",
                                                "assets/images/설정광고하기2-1.jpg",
                                                "assets/images/설정광고하기3-1.jpg",
                                                "assets/images/설정광고하기4-1.jpg",
                                                "assets/images/설정광고하기5-1.jpg",
                                                "assets/images/설정광고하기6-1.jpg",
                                              ],
                                            )));
                              });
                            },
                          ),
                        ],
                      ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            child: Text(
                              "QR",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "QR코드",
                                              images: ["assets/images/1.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        InkWell(
                            child: Text(
                              "광고 스크랩 리스트",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "광고 스크랩 리스트",
                                              images: ["assets/images/10.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        InkWell(
                            child: Text(
                              "머니충전",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "포인트 충전",
                                              images: ["assets/images/3.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        InkWell(
                            child: Text(
                              "머니 사용 내역",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "포인트 사용 내역",
                                              images: ["assets/images/2.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: size.width * 0.9,
                          height: 1,
                          color: black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            child: Text(
                              "화면",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "화면",
                                              images: ["assets/images/6.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        InkWell(
                            child: Text(
                              "소리",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "소리",
                                              images: ["assets/images/7.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: size.width * 0.9,
                          height: 1,
                          color: black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            child: Text(
                              "공지사항",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "공지사항",
                                              images: ["assets/images/11.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        InkWell(
                            child: Text(
                              "정보변경",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "정보변경",
                                              images: ["assets/images/5.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        InkWell(
                            child: Text(
                              "버전정보",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "버전정보",
                                              images: ["assets/images/4.5.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                        InkWell(
                            child: Text(
                              "고객센터",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SampleScreen(
                                              appbarTitle: "고객센터",
                                              images: ["assets/images/8.png"],
                                            )));
                              });
                            }),
                        verticalSpaceTiny,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
