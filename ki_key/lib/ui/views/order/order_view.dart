import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/input_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:ki_key/ui/views/order/order_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'ordered_view.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  bool isDelivery = true;
  bool isReadOnly = true;
  bool isPhoneReadOnly = true;

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
                    isDelivery ? Text("배달 주소지") : Text("포장 정보"),
                    horizontalSpaceMedium,
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDelivery = true;
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
                    ),
                    horizontalSpaceSmall,
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDelivery = false;
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
                  ],
                ),
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
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: black.withOpacity(0.3)),
                                  child: TextFormField(
                                    controller: null,
                                    readOnly: isReadOnly,
                                    decoration: InputDecoration.collapsed(
                                        hintText: "원래주소",
                                        hintStyle: TextStyle(
                                            fontSize: 13, color: black)),
                                  ),
                                ),
                              ),
                              horizontalSpaceTiny,
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isReadOnly = false;
                                  });
                                },
                                child: Text(
                                  "변경",
                                  style: TextStyle(
                                    color: red,
                                  ),
                                ),
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
                          child: Container(
                            decoration:
                                BoxDecoration(color: black.withOpacity(0.3)),
                            child: TextFormField(
                              controller: null,
                              readOnly: isPhoneReadOnly,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration.collapsed(
                                  hintText: "010-1561-3847",
                                  hintStyle:
                                      TextStyle(fontSize: 13, color: black)),
                            ),
                          ),
                        ),
                        horizontalSpaceTiny,
                        InkWell(
                          onTap: () {
                            setState(() {
                              isPhoneReadOnly = false;
                            });
                          },
                          child: Text(
                            "변경",
                            style: TextStyle(
                              color: red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("안심번호 사용"),
                    Checkbox(
                      value: true,
                      onChanged: null,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                verticalBar(size.width * 0.9, 1, Colors.black),
                verticalSpaceSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("요청 사항"),
                    Row(
                      children: [
                        Text("매장"),
                        horizontalSpaceMedium,
                        Expanded(
                          child: TextFormField(
                            controller: null,
                            decoration: InputDecoration.collapsed(
                                hintText: "맛있게 부탁해요.",
                                hintStyle:
                                    TextStyle(fontSize: 13, color: black)),
                          ),
                        ),
                        Text("다음에도 사용"),
                        Checkbox(value: true, onChanged: null),
                        horizontalSpaceMedium,
                      ],
                    ),
                    Row(
                      children: [
                        Text("수저 x"),
                        horizontalSpaceTiny,
                        Container(
                          width: 20,
                          decoration:
                              BoxDecoration(border: Border.all(color: black)),
                          child: Center(child: Text("2")),
                        )
                      ],
                    ),
                    isDelivery
                        ? Row(
                            children: [
                              Text("배달"),
                              horizontalSpaceMedium,
                              Expanded(
                                child: TextFormField(
                                  controller: null,
                                  decoration: InputDecoration.collapsed(
                                      hintText: "문앞에 두고 가세요.",
                                      hintStyle: TextStyle(
                                          fontSize: 13, color: black)),
                                ),
                              ),
                              Text("다음에도 사용"),
                              Checkbox(value: true, onChanged: null),
                              horizontalSpaceMedium,
                            ],
                          )
                        : Container(),
                  ],
                ),
                verticalSpaceSmall,
                verticalBar(size.width * 0.9, 3, mainColor),
                Column(
                  children: [
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "옛날 통닭",
                              style: TextStyle(fontSize: 20),
                            ),
                            horizontalSpaceSmall,
                            Text(
                              "- 1 +",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Text("15000원"),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "감자 튀김",
                              style: TextStyle(fontSize: 20),
                            ),
                            horizontalSpaceSmall,
                            Text(
                              "- 1 +",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Text(
                          "15000원",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("주문금액"),
                        horizontalSpaceSmall,
                        Text("22000원"),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("배달비"),
                        horizontalSpaceSmall,
                        Text("2000원"),
                      ],
                    ),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(color: mainColor),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "주문하기",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                horizontalSpaceSmall,
                                Text(
                                  "결제금액",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                horizontalSpaceTiny,
                                Text(
                                  "24000원",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderedView()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(color: mainColor),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "주문 추가",
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
