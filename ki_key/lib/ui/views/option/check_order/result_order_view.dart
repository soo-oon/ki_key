import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:ki_key/ui/views/order/order_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ResultOrderView extends StatefulWidget {
  @override
  _ResultOrderViewState createState() => _ResultOrderViewState();
}

class _ResultOrderViewState extends State<ResultOrderView> {
  bool isDelivery = true;
  bool isCancel = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<OrderViewModel>.reactive(
      viewModelBuilder: () => OrderViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 48,
          flexibleSpace: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpaceMedium,
                Text(
                  "옛날 통닭은 떡볶이랑 먹어야 제 맛이지",
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpaceTiny,
                verticalBar(size.width * 0.9, 1, white),
                verticalSpaceTiny,
                Text(
                  "주문 내역",
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("요청사항"),
                    horizontalSpaceMedium,
                    isDelivery
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                isDelivery = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "배달",
                                  style: TextStyle(color: white),
                                ),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              setState(() {
                                isDelivery = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: red,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "포장",
                                  style: TextStyle(color: white),
                                ),
                              ),
                            ),
                          ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isCancel = !isCancel;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "취소",
                            style: TextStyle(color: white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(width: 50, child: Text("매장")),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.6,
                          child: Text("리뷰5점,맛있게부탁해요."),
                        ),
                      ],
                    ),
                  ],
                ),
                verticalSpaceSmall,
                isDelivery
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(width: 50, child: Text("배달")),
                          Row(
                            children: [
                              Container(
                                width: size.width * 0.6,
                                child: Text("벨 누르고 문 앞에 두고 가세요."),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                verticalSpaceSmall,
                verticalBar(size.width * 0.9, 1, Colors.black),
                verticalSpaceSmall,
                isDelivery
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(width: 50, child: Text("지번")),
                          Row(
                            children: [
                              Container(
                                width: size.width * 0.6,
                                child: Text("원래주소"),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                verticalSpaceTiny,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(width: 50, child: Text("연락처")),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.6,
                          child: Text("010-1561-3847"),
                        ),
                        horizontalSpaceTiny,
                      ],
                    ),
                  ],
                ),
                verticalSpaceSmall,
                isCancel
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(width: 55, child: Text("접수시간")),
                              Row(
                                children: [
                                  Container(
                                    width: size.width * 0.6,
                                    child: Text("10 / 5 / 수 / 오전 / 5:30"),
                                  ),
                                  horizontalSpaceTiny,
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(width: 55, child: Text("취소시간")),
                              Row(
                                children: [
                                  Container(
                                    width: size.width * 0.6,
                                    child: Text("10 / 5 / 수 / 오전 / 5:40"),
                                  ),
                                  horizontalSpaceTiny,
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                verticalSpaceSmall,
                verticalBar(size.width * 0.9, 1, Colors.grey),
                verticalSpaceSmall,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          child: Center(
                            child: Text(
                              "메뉴",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Container(
                          width: 20,
                          child: Text(
                            "수량",
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: 85,
                          child: Center(
                            child: Text(
                              "금액",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    verticalBar(size.width * 0.9, 1, Colors.black),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          child: Center(
                            child: Text(
                              "옛날 통닭",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Container(
                          width: 20,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: 85,
                          child: Center(
                            child: Text(
                              "15000원",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          child: Center(
                            child: Text(
                              "감자 튀김",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Container(
                          width: 20,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: 85,
                          child: Center(
                            child: Text(
                              "3000원",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("주문금액"),
                        horizontalSpaceSmall,
                        Text("22000원"),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("배달비"),
                        horizontalSpaceSmall,
                        Text("2000원"),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("결제금액"),
                        horizontalSpaceSmall,
                        Text("24000원"),
                      ],
                    ),
                    verticalSpaceSmall,
                    verticalBar(size.width * 0.9, 1, Colors.black),
                    verticalSpaceSmall,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("상호:", style: TextStyle(fontSize: 15)),
                            Text("주문시간:", style: TextStyle(fontSize: 15)),
                            Text("주문번호:", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        horizontalSpaceSmall,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("옛날통닭은 떢볶이랑 먹어야 제맛이지",
                                style: TextStyle(fontSize: 15)),
                            Text("10 / 5 / 수 / 오전 / 05:30",
                                style: TextStyle(fontSize: 15)),
                            Text("asd1234", style: TextStyle(fontSize: 15)),
                          ],
                        )
                      ],
                    ),
                    verticalSpaceSmall,
                    verticalBar(size.width * 0.9, 1, Colors.black),
                    verticalSpaceSmall,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("원산지 표기"),
                            Text("닭 : 국내산, 쌀 : 국내산, 돼지고기 : 독일산"),
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(color: mainColor),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "주문 취소",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Text(
            "키키는 통신판매의 중개자이며 통신판매의 당사자가 아닙니다.\n따라서 키키는 상품거래의 정보및 거래에 책임을 지지 않습니다."),
      ),
    );
  }
}
