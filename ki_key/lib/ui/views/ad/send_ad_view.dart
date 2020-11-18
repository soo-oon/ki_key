import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/input_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'add_ad_viewmodel.dart';

class SendView extends StatefulWidget {
  @override
  _SendViewState createState() => _SendViewState();
}

class _SendViewState extends State<SendView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddAdViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("광고 설정"),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [Text("지역"), horizontalSpaceSmall, Text("수성구")],
                    ),
                    verticalSpaceSmall,
                    Row(
                      children: [Text("지역"), horizontalSpaceSmall, Text("수성구")],
                    ),
                    verticalSpaceSmall,
                    Row(
                      children: [Text("지역"), horizontalSpaceSmall, Text("수성구")],
                    ),
                    verticalSpaceSmall,
                    Row(
                      children: [Text("지역"), horizontalSpaceSmall, Text("수성구")],
                    ),
                    verticalSpaceSmall,
                    Row(
                      children: [Text("지역"), horizontalSpaceSmall, Text("수성구")],
                    ),
                    verticalSpaceSmall,
                    Row(
                      children: [Text("지역"), horizontalSpaceSmall, Text("수성구")],
                    ),
                    verticalSpaceSmall,
                    Text("페이지 광고 올리기"),
                    verticalSpaceSmall,
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: black,
                      ),
                    ),
                    verticalSpaceSmall,
                    Text("동영상 광고 올리기"),
                    verticalSpaceSmall,
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: black,
                      ),
                    ),
                    verticalSpaceSmall,
                    Text("추가 키 Q&A"),
                    verticalSpaceSmall,
                    InputWidget(
                      controller: null,
                      hintText: "Q.",
                      widthRatio: 0.9,
                      height: 20,
                    ),
                    verticalSpaceSmall,
                    InputWidget(
                      controller: null,
                      hintText: "A.1",
                      widthRatio: 0.9,
                      height: 20,
                    ),
                    verticalSpaceSmall,
                    InputWidget(
                      controller: null,
                      hintText: "A.2",
                      widthRatio: 0.9,
                      height: 20,
                    ),
                    verticalSpaceSmall,
                    InputWidget(
                      controller: null,
                      hintText: "A.3",
                      widthRatio: 0.9,
                      height: 20,
                    ),
                    verticalSpaceSmall,
                    InkWell(
                      onTap: () => model.navigateToOption(),
                      child: Container(
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(child: Text("광고신청")),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
      viewModelBuilder: () => AddAdViewModel(),
    );
  }
}
