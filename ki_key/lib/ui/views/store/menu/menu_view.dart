import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:stacked/stacked.dart';

import 'menu_viewmodel.dart';

class MenuView extends StatefulWidget {
  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<MenuViewModel>.reactive(
      builder: (context, model, child) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                  child: Text("안내",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                  child: Text(
                      "황제족발은 국내산 앞다리만을 사용합니다\n1. 기본서비스 콜라\n2. 리뷰서비스 옛날 통닭\n항상 최선을 다하겠습니다."),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 8.0),
                  child: Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(color: mainColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "스페셜 메뉴",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("통닭"),
                        subtitle: Text("통으로 튀긴 옛날 전통 통닭의 맛"),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("15000원"),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: BoxWidget(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: Text(
                          "스페셜 메뉴",
                          style: TextStyle(color: white),
                        ),
                      ),
                      color: mainColor,
                      radius: 10.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BoxWidget(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text(
                        "메인 메뉴",
                        style: TextStyle(color: white),
                      ),
                    ),
                    color: mainColor,
                    radius: 10.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BoxWidget(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text(
                        "사이드 메뉴",
                        style: TextStyle(color: white),
                      ),
                    ),
                    color: mainColor,
                    radius: 10.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BoxWidget(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text(
                        "음료, 주문",
                        style: TextStyle(color: white),
                      ),
                    ),
                    color: mainColor,
                    radius: 10.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      viewModelBuilder: () => MenuViewModel(),
    );
  }
}
