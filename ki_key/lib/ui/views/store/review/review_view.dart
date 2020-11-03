import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../shared/sharedColors.dart';
import '../../../../shared/widgets/ui_helpers.dart';
import 'review_viewmodel.dart';

class ReviewView extends StatefulWidget {
  @override
  _ReviewViewState createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  List<String> intros = ["assets/images/인트로.png"];
  String intro = "assets/images/인트로.png";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<ReviewViewModel>.reactive(
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Container(
                child: Text("리뷰 이벤트 공지"),
              ),
            ),
          ),
          verticalBar(size.width, 2, mainColor),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(


                  Icons.cloud_circle,
                  color: red,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("맛있으면 짖는 개"),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: red,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: red,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: red,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: red,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: red,
                        size: 20,
                      ),
                    ],
                  ),
                  Text("멍멍멍멈엄엄엄엄엄엄엄어")
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Container(
                height: 150,
                width: size.width * 0.95,
                decoration: BoxDecoration(color: red),
              ),
            ),
          )
        ],
      ),
      viewModelBuilder: () => ReviewViewModel(),
    );
  }
}
