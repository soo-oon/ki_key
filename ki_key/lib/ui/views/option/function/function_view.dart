import 'package:flutter/material.dart';
import 'package:ki_key/main.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/text_button_widget.dart';
import 'package:ki_key/ui/views/order/order_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FunctionalView extends StatefulWidget {
  @override
  _FunctionalViewState createState() => _FunctionalViewState();
}

class _FunctionalViewState extends State<FunctionalView> {
  int time = 30;
  int colorValue = 180;
  bool isAlarm = false;
  bool issameAlarm = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<OrderViewModel>.reactive(
      viewModelBuilder: () => OrderViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: secColor,
        appBar: AppBar(
          title: Text("기능 설정"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButtonWidget(
                text: "접수 시간 설정",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        StatefulBuilder(builder: (context, setState) {
                      return new AlertDialog(
                        backgroundColor: mainColor,
                        title: new Text('접수 시간 설정'),
                        content: Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CheckboxListTile(
                                    title: Text("접수 알림시 설정"),
                                    value: isAlarm,
                                    onChanged: (value) {
                                      setState(() {
                                        isAlarm = value;
                                      });
                                    },
                                  ),
                                  CheckboxListTile(
                                    title: Text("항상 같은 시간으로 설정"),
                                    value: issameAlarm,
                                    onChanged: (value) {
                                      setState(() {
                                        issameAlarm = value;
                                      });
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              time -= 15;
                                            });
                                          },
                                          child: Container(
                                              width: 10, child: Text('-'))),
                                      Text("$time 분"),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              time += 15;
                                            });
                                          },
                                          child: Container(
                                              width: 10, child: Text('+'))),
                                    ],
                                  )
                                ],
                              ),
                              done(context),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
              TextButtonWidget(
                text: "영업 임시 정지",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        StatefulBuilder(builder: (context, setState) {
                      return new AlertDialog(
                        backgroundColor: mainColor,
                        title: new Text('접수 시간 설정'),
                        content: Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              time -= 15;
                                            });
                                          },
                                          child: Container(
                                              width: 10, child: Text('-'))),
                                      Text("$time 분"),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              time += 15;
                                            });
                                          },
                                          child: Container(
                                              width: 10, child: Text('+'))),
                                    ],
                                  )
                                ],
                              ),
                              done(context),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
              TextButtonWidget(
                text: "임시 휴업",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        StatefulBuilder(builder: (context, setState) {
                      return new AlertDialog(
                        backgroundColor: mainColor,
                        title: new Text('접수 시간 설정'),
                        content: Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [Text("지금부터 마감까지 임시 휴업 처리 됩니다.")],
                              ),
                              done(context),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
              TextButtonWidget(
                text: "알림음 설정",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        StatefulBuilder(builder: (context, setState) {
                      return new AlertDialog(
                        backgroundColor: mainColor,
                        title: new Text('알람음 설정'),
                        content: Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("알림음량 설정"),
                                  SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: Colors.blue,
                                      thumbColor: Color(0xFFE01555),
                                      overlayColor: Color(0x29EB1555),
                                      thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 15.0,
                                      ),
                                      //슬라이더 버튼 크기조절
                                      overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 30.0,
                                      ),
                                    ),
                                    child: Slider(
                                      value: colorValue.toDouble(),
                                      min: 120.0,
                                      max: 220.0,
                                      onChanged: (double newValue) {
                                        //슬라이더 이동시, 숫자 변경
                                        setState(() {
                                          colorValue = newValue.round();
                                        });
                                      },
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("1번"),
                                      Checkbox(
                                        onChanged: (value) {},
                                        value: isAlarm,
                                      ),
                                      Text("2번"),
                                      Checkbox(
                                        onChanged: (value) {},
                                        value: isAlarm,
                                      ),
                                      Text("계속"),
                                      Checkbox(
                                        onChanged: (value) {},
                                        value: isAlarm,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              done(context),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget done(BuildContext context) {
  return InkWell(
    onTap: () => Navigator.of(context).pop(false),
    child: Container(
      width: 75,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(5.0)),
      child: Center(
        child: Text(
          "설정 완료",
          style: TextStyle(color: mainColor),
        ),
      ),
    ),
  );
}
