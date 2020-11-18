import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/input_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';
import 'package:ki_key/ui/views/ad/add_ad_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AddAdView extends StatefulWidget {
  @override
  _AddAdViewState createState() => _AddAdViewState();
}

class _AddAdViewState extends State<AddAdView> {
  List<String> sex = ["남", "여"];
  List<String> age = ["10대", "20대", "30대", "40대", "50대", "60대", "70대", "모두"];
  List<String> job = ["초등", "중등", "고등", "대학생", "주부", "자영업", "전문직", "모두"];
  List<String> likes = ["10대", "20대", "30대", "40대", "50대", "60대", "70대", "모두"];
  int big_class = 0;
  int medium_class = 0;
  int small_class = 0;
  bool isPersonal = true;
  bool isCert = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<AddAdViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: secColor,
        appBar: AppBar(
          title: Text("광고 설정"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          child: Center(child: Text("대분류")),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.yellow,
                          ),
                        ),
                        verticalSpaceSmall,
                        Container(
                          height: 75,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0)
                                return textButton(0, "리스트 광고", big_class, () {
                                  setState(() {
                                    big_class = index;
                                  });
                                });
                              else if (index == 1)
                                return textButton(1, "리스트 추천", big_class, () {
                                  setState(() {
                                    big_class = index;
                                  });
                                });
                              else
                                return textButton(2, "동영상 광고", big_class, () {
                                  setState(() {
                                    big_class = index;
                                  });
                                });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  horizontalSpaceSmall,
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          child: Center(child: Text("중분류")),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.yellow,
                          ),
                        ),
                        verticalSpaceSmall,
                        Container(
                          height: 75,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0)
                                return textButton(0, "요식업", medium_class, () {
                                  setState(() {
                                    medium_class = index;
                                  });
                                });
                              else if (index == 1)
                                return textButton(1, "쇼핑", medium_class, () {
                                  setState(() {
                                    medium_class = index;
                                  });
                                });
                              else if (index == 2)
                                return textButton(2, "플라워", medium_class, () {
                                  setState(() {
                                    medium_class = index;
                                  });
                                });
                              else if (index == 3)
                                return textButton(3, "학원", medium_class, () {
                                  setState(() {
                                    medium_class = index;
                                  });
                                });
                              else
                                return textButton(4, "스포츠", medium_class, () {
                                  setState(() {
                                    medium_class = index;
                                  });
                                });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  horizontalSpaceSmall,
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          child: Center(child: Text("소분류")),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.yellow,
                          ),
                        ),
                        verticalSpaceSmall,
                        Container(
                          height: 75,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0)
                                return textButton(0, "한식", small_class, () {
                                  setState(() {
                                    small_class = index;
                                  });
                                });
                              else if (index == 1)
                                return textButton(1, "중식", small_class, () {
                                  setState(() {
                                    small_class = index;
                                  });
                                });
                              else if (index == 2)
                                return textButton(2, "일식", small_class, () {
                                  setState(() {
                                    small_class = index;
                                  });
                                });
                              else
                                return textButton(3, "양식", small_class, () {
                                  setState(() {
                                    small_class = index;
                                  });
                                });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              isCert
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isPersonal = false;
                                });
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Center(child: Text("사업자")),
                              ),
                            ),
                            horizontalSpaceSmall,
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isPersonal = true;
                                });
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Center(child: Text("개인")),
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceMedium,
                        isPersonal
                            ? Row(
                                children: [
                                  Column(
                                    children: [
                                      Text("이름       "),
                                      verticalSpaceMedium,
                                      Text("주민번호"),
                                    ],
                                  ),
                                  horizontalSpaceMedium,
                                  Column(
                                    children: [
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                      verticalSpaceMedium,
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                    ],
                                  ),
                                  horizontalSpaceSmall,
                                  Column(
                                    children: [
                                      Container(
                                        height: 20,
                                      ),
                                      verticalSpaceMedium,
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(height: 20, child: Text("담당자")),
                                      verticalSpaceSmall,
                                      Container(height: 20, child: Text("연락처")),
                                      verticalSpaceSmall,
                                      Container(height: 20, child: Text("대표자")),
                                      verticalSpaceSmall,
                                      Container(
                                          height: 20, child: Text("사업자번호")),
                                    ],
                                  ),
                                  horizontalSpaceMedium,
                                  Column(
                                    children: [
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                      verticalSpaceSmall,
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                      verticalSpaceSmall,
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                      verticalSpaceSmall,
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                    ],
                                  ),
                                  horizontalSpaceSmall,
                                  Column(
                                    children: [
                                      Container(
                                        height: 90,
                                      ),
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.1,
                                      ),
                                    ],
                                  ),
                                  horizontalSpaceSmall,
                                  Column(
                                    children: [
                                      Container(
                                        height: 90,
                                      ),
                                      InputWidget(
                                        controller: null,
                                        hintText: '',
                                        height: 20,
                                        widthRatio: 0.2,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        verticalSpaceMedium,
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                boxButton(() {}, "본인인증", width: 75, height: 30),
                                horizontalSpaceSmall,
                                Container(width: 65),
                              ],
                            ),
                            verticalSpaceSmall,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                boxButton(() {}, "인증번호입력",
                                    width: 100, height: 30),
                                horizontalSpaceSmall,
                                boxButton(() {
                                  setState(() {
                                    isCert = false;
                                  });
                                }, "확인", width: 40, height: 30),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  : Column(
                      children: [
                        boxButton(() {}, "광고영상찾기", width: 100, height: 25),
                        verticalSpaceSmall,
                        boxButton(() {}, "미리보기", width: 100, height: 25),
                        verticalSpaceSmall,
                        boxButton(() {}, "광고 범위 설정", width: 100, height: 25),
                        verticalSpaceSmall,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Column(
                              children: [
                                Container(height: 20, child: Text("거리")),
                                verticalSpaceTiny,
                                Container(height: 20, child: Text("성별")),
                                verticalSpaceTiny,
                                Container(height: 20, child: Text("나이")),
                                verticalSpaceTiny,
                                Container(height: 20, child: Text("직업")),
                                verticalSpaceTiny,
                                Container(height: 20, child: Text("취미")),
                              ],
                            ),
                            horizontalSpaceMedium,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                boxButton(() {}, "15km", width: 50, height: 20),
                                verticalSpaceTiny,
                                Container(
                                    width: size.width * 0.7,
                                    height: 20,
                                    child: buildListView(2, sex)),
                                verticalSpaceTiny,
                                Container(
                                    width: size.width * 0.7,
                                    height: 20,
                                    child: buildListView(age.length, age)),
                                verticalSpaceTiny,
                                Container(
                                    width: size.width * 0.7,
                                    height: 20,
                                    child: buildListView(job.length, job)),
                                verticalSpaceTiny,
                                Container(
                                    width: size.width * 0.7,
                                    height: 20,
                                    child: buildListView(age.length, age)),
                              ],
                            )
                          ],
                        ),
                        verticalSpaceMedium,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("질문")),
                            horizontalSpaceMedium,
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.5,
                              height: 20,
                            )
                          ],
                        ),
                        verticalSpaceSmall,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("예시")),
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("1")),
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            ),
                            horizontalSpaceSmall,
                            Container(height: 20, child: Text("2")),
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            ),
                            horizontalSpaceSmall,
                            Container(height: 20, child: Text("3")),
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            )
                          ],
                        ),
                        verticalSpaceSmall,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("정답")),
                            horizontalSpaceMedium,
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            )
                          ],
                        ),
                        verticalSpaceMedium,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("기간")),
                            horizontalSpaceMedium,
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            )
                          ],
                        ),
                        verticalSpaceSmall,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("반복")),
                            horizontalSpaceMedium,
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            )
                          ],
                        ),
                        verticalSpaceSmall,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("광고노출")),
                            horizontalSpaceMedium,
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            )
                          ],
                        ),
                        verticalSpaceSmall,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            Container(height: 20, child: Text("예상광고비")),
                            horizontalSpaceMedium,
                            InputWidget(
                              controller: null,
                              hintText: '',
                              widthRatio: 0.2,
                              height: 20,
                            )
                          ],
                        ),
                        verticalSpaceMedium,
                        Row(
                          children: [
                            horizontalSpaceMedium,
                            boxButton(() {
                              setState(() {
                                model.navigateToSend();
                              });
                            }, "광고 내보내기", width: 150, height: 20),
                          ],
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => AddAdViewModel(),
    );
  }

  Widget boxButton(Function onTap, String title,
      {double width = 50, double height = 100}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(10.0)),
        child: Center(child: Text(title)),
      ),
    );
  }

  Widget textButton(int index, String title, int countValue, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 75,
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              fontWeight:
                  countValue == index ? FontWeight.bold : FontWeight.normal),
        )),
      ),
    );
  }

  Widget buildListView(int count, List<String> values) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: values.map((String key) {
        return boxButton(() {}, key);
      }).toList(),
    );
  }
}
