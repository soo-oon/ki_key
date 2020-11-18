import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:ki_key/ui/views/store/store_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NewOrderView extends StatefulWidget {
  @override
  _NewOrderViewState createState() => _NewOrderViewState();
}

class _NewOrderViewState extends State<NewOrderView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<StoreViewModel>.reactive(
      viewModelBuilder: () => StoreViewModel(),
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("03:42", style: TextStyle(color: black)),
                    Text("옛날통닭 외", style: TextStyle(color: black)),
                    Text("대구 달서구 성당동", style: TextStyle(fontSize: 10)),
                    Text("결제금액 24,000원", style: TextStyle(color: black)),
                  ],
                ),
                Column(
                  children: [
                    verticalSpaceLarge,
                    InkWell(
                      onTap: () {
                        dialog(context);
                      },
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                          child: Text(
                            "주문접수",
                            style: TextStyle(color: white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            verticalSpaceTiny,
            verticalBar(size.width * 0.9, 1, black),
            verticalSpaceTiny,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("03:41", style: TextStyle(color: black)),
                    Text("찜닭 외", style: TextStyle(color: black)),
                    Text("대구 달서구 성당동", style: TextStyle(fontSize: 10)),
                    Text("후불(카드) 24,000원", style: TextStyle(color: black)),
                  ],
                ),
                Column(
                  children: [
                    verticalSpaceLarge,
                    InkWell(
                      onTap: () {
                        dialog(context);
                      },
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                          child: Text(
                            "주문접수",
                            style: TextStyle(color: white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            verticalSpaceTiny,
            verticalBar(size.width * 0.9, 1, black),
            verticalSpaceTiny,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("03:42", style: TextStyle(color: black)),
                    Text("염통꼬치구이 외", style: TextStyle(color: black)),
                    Text("대구 달서구 성당동", style: TextStyle(fontSize: 10)),
                    Text("후불(현금) 28,000원", style: TextStyle(color: black)),
                  ],
                ),
                Column(
                  children: [
                    verticalSpaceLarge,
                    InkWell(
                      onTap: () {
                        dialog(context);
                      },
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                          child: Text(
                            "주문접수",
                            style: TextStyle(color: white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            verticalSpaceTiny,
            verticalBar(size.width * 0.9, 1, black),
          ],
        ),
      ),
    );
  }
}

Widget dialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(builder: (context, setState) {
      return new AlertDialog(
        backgroundColor: mainColor,
        title: Center(child: new Text('배달 예상 시간')),
        content: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("30분"),
                      verticalSpaceSmall,
                      Text("40분"),
                      verticalSpaceSmall,
                      Text("50분"),
                      verticalSpaceSmall,
                      Text("60분"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("30분"),
                      verticalSpaceSmall,
                      Text("40분"),
                      verticalSpaceSmall,
                      Text("50분"),
                      verticalSpaceSmall,
                      Text("60분"),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () => Navigator.of(context).pop(false),
                child: Container(
                  width: 75,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(5.0)),
                  child: Center(
                    child: Text(
                      "확인",
                      style: TextStyle(color: mainColor, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }),
  );
}
