import 'package:flutter/material.dart';
import 'package:ki_key/shared/widgets/stars_widget.dart';
import 'package:ki_key/ui/views/store/info/storeInfo_view.dart';
import 'package:ki_key/ui/views/store/review/review_view.dart';
import 'package:ki_key/ui/views/store/store_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../shared/sharedColors.dart';
import '../../../shared/widgets/ui_helpers.dart';
import 'menu/menu_view.dart';

class StoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<StoreViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
              backgroundColor: white,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                shadowColor: Colors.white,
                toolbarHeight: 180,
                actions: [
                  Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_left,
                          color: red,
                          size: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              "Key.",
                              style: TextStyle(fontSize: 20, color: white),
                            ),
                            Text(
                              "25650",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
                flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: size.width * 0.7,
                      child: Center(
                        child: Text(
                          "옛날 통닭은 떡볶이랑 먹어야 제 맛이지",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          StarsWidget(
                            score: 5,
                            size: 15,
                          ),
                          Text(
                            "평점: 5.0",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "맛 10 ",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "배달 9 ",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "친절 9 ",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    verticalBar(size.width, 3, white),
                    const SizedBox(height: 30.0),
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: Size(size.width, 30),
                  child: Container(
                    height: 30,
                    child: TabBar(
                      labelColor: white,
                      indicatorWeight: 1,
                      indicatorColor: black,
                      tabs: [
                        Tab(text: "메뉴"),
                        Tab(text: "정보"),
                        Tab(text: "리뷰"),
                      ],
                    ),
                  ),
                ),
              ),
              body: TabBarView(children: [
                MenuView(),
                StoreInfoView(),
                ReviewView(),
              ])),
        ),
      ),
      viewModelBuilder: () => StoreViewModel(),
    );
  }
}
