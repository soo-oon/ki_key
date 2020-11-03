import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/button_widget.dart';
import 'package:ki_key/shared/widgets/text_button_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'option_viewmodel.dart';

class OptionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<OptionViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          backgroundColor: secColor,
          appBar: AppBar(
            title: Text("설정"),
            backgroundColor: mainColor,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                model.store == 0
                    ? Column(
                        children: [
                          verticalSpaceSmall,
                          CustomButton(
                            color: mainColor.withOpacity(0.3),
                            title: "광고하기",
                            onTap: () {},
                          ),
                          verticalSpaceSmall,
                          horizontalBar(size.width, 1, Colors.black),
                        ],
                      )
                    : Column(
                        children: [
                          verticalSpaceSmall,
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
                                      TextButtonWidget(text: "광고관리"),
                                      verticalSpaceTiny,
                                      TextButtonWidget(text: "매출정산"),
                                      verticalSpaceTiny,
                                      TextButtonWidget(text: "주문접수"),
                                      verticalSpaceTiny,
                                      TextButtonWidget(text: "기능설정"),
                                      verticalSpaceTiny,
                                      TextButtonWidget(text: "공지사항"),
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
                            onTap: () {},
                          ),
                        ],
                      ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButtonWidget(
                          text: "QR",
                        ),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "광고 스크랩 리스트"),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "머니충전"),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "머니 사용 내역"),
                        verticalSpaceSmall,
                        horizontalBar(size.width, 1, Colors.black),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "화면"),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "소리"),
                        verticalSpaceSmall,
                        horizontalBar(size.width, 1, Colors.black),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "공지사항"),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "정보변경"),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "버전정보"),
                        verticalSpaceTiny,
                        TextButtonWidget(text: "고객센터"),
                        verticalSpaceTiny,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => OptionViewModel(),
    );
  }
}
