import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:ki_key/shared/widgets/text_button_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '화면',
          style: TextStyle(
              fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
        ),
      ),
      body: ScreenView(),
    );
  }
}

class ScreenView extends StatefulWidget {
  //Function<>HistoryInfo> a=[];
  @override
  _ScreenViewState createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  int colorValue = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 500,
      padding:
          EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '색상',
            style: TextStyle(
                fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
          ),
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
          SizedBox(
            height: 20.0,
          ),
          Text(
            '글자크기',
            style: TextStyle(
                fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20.0,
          ),
          Stack(
            alignment: Alignment.center,//행 결정
            children: <Widget>[
              verticalBar(300.0, 5.0, Colors.yellow),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButtonWidget(
                    text: '키키',
                    fontSize: 10.0,
                    onTap: () {},
                  ),
                  TextButtonWidget(
                    text: '키키',
                    fontSize: 20.0,
                    onTap: () {},
                  ),
                  TextButtonWidget(
                    text: '키키',
                    fontSize: 30.0,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '배경화면',
            style: TextStyle(
                fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/1.png',
              scale: 2,
            ),
          ),
        ],
      ),
    );
  }
}

Widget TextSize(double size) {
  return TextButtonWidget(
    text: '키키',
    fontSize: size,
    onTap: () {},
  );
}
