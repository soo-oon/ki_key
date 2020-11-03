import 'package:flutter/material.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:stacked/stacked.dart';

import '../../../../shared/sharedColors.dart';
import 'storeInfo_viewmodel.dart';

class StoreInfoView extends StatefulWidget {
  @override
  _StoreInfoViewState createState() => _StoreInfoViewState();
}

class _StoreInfoViewState extends State<StoreInfoView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<StoreInfoViewModel>.reactive(
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    Icon(Icons.account_box),
                    Text("우리 가게는?"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    Icon(Icons.account_box),
                    Text("제품 홍보"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    Icon(Icons.account_box),
                    Text("매장 정보"),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.account_box),
                        Text("배달 팁 안내"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("최소 주문"),
                      Container(
                        width: size.width * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("~15000원"),
                            Text("3000원"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("~20000원"),
                            Text("2000원"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("지역 배달팁"),
                      Container(
                        width: size.width * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("감삼동,송현동,장기동"),
                            Text("0원"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("상인동,월성동,도원동"),
                            Text("+2000원"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 25.0),
                  child: Text("야간 배달팁"),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.account_box),
                        Text("사업자 정보"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 25.0),
                  child: Text("대표자명"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 25.0),
                  child: Text("상호명"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 25.0),
                  child: Text("사업장 주소"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 25.0),
                  child: Text("사업자 등록번호"),
                ),
              ],
            ),
          ],
        ),
      ),
      viewModelBuilder: () => StoreInfoViewModel(),
    );
  }
}
