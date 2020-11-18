import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:ki_key/ui/views/option/check_order/new_order_view.dart';
import 'package:ki_key/ui/views/option/check_order/wait_order_view.dart';
import 'package:ki_key/ui/views/order/order_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'done_order_view.dart';

class CheckView extends StatefulWidget {
  @override
  _CheckViewState createState() => _CheckViewState();
}

class _CheckViewState extends State<CheckView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<OrderViewModel>.reactive(
      viewModelBuilder: () => OrderViewModel(),
      builder: (context, model, child) => SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: white,
            appBar: AppBar(
              automaticallyImplyLeading: true,
              shadowColor: Colors.white,
              title: Text("주문 접수"),
              bottom: PreferredSize(
                preferredSize: Size(size.width, 30),
                child: Container(
                  height: 30,
                  child: TabBar(
                    onTap: (index) {},
                    labelColor: white,
                    indicatorWeight: 1,
                    indicatorColor: black,
                    tabs: [
                      Tab(text: "신규"),
                      Tab(text: "처리중"),
                      Tab(text: "완료"),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(children: [
              NewOrderView(),
              WaitOrderView(),
              DoneOrderView(),
            ]),
            bottomNavigationBar: Container(
              height: 55,
              decoration: BoxDecoration(color: mainColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "접수 2건",
                          style: TextStyle(color: red),
                        ),
                        Text("254,000원", style: TextStyle(color: red)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("취소 2건", style: TextStyle(color: red)),
                        Text("53,000원", style: TextStyle(color: red)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
