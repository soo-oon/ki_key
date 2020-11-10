import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class SoundSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '소리',
          style: TextStyle(
              fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
        ),
      ),
      body: SoundView(),
    );
  }
}

class SoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '알림음',
            style: TextStyle(
                fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
          ),
          Container(child: ChangedSetting()),
          Text(
            '알림음크기',
            style: TextStyle(
                fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
          ),
          SoundSize(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('0'),
              Text('100'),
            ],
          ),
        ],
      ),
    );
  }
}

class ChangedSetting extends StatefulWidget {
  @override
  _ChangedSettingState createState() => _ChangedSettingState();
}

class _ChangedSettingState extends State<ChangedSetting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          children: <Widget>[
            InfoTile(
              infoTitle: "애기",
            ),
            InfoTile(
              infoTitle: "여성",
            ),
            InfoTile(
              infoTitle: "남성",
            ),
            InfoTile(
              infoTitle: "할아버지",
            ),
            InfoTile(
              infoTitle: "할머니",
            ),
          ],
        ),
      ),
    );
  }
}

class InfoTile extends StatefulWidget {
  bool isChecked;
  final String infoTitle;

  InfoTile({this.isChecked = false, this.infoTitle});

  @override
  _InfoTileState createState() => _InfoTileState();
}

class _InfoTileState extends State<InfoTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            widget.infoTitle,
          ),
          Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: widget.isChecked,
            onChanged: (isChecked) {
              setState(() {
                widget.isChecked = isChecked;
              });
            },
          ),
        ],
      ),
    );
  }
}

class SoundSize extends StatefulWidget {
  @override
  _SoundSizeState createState() => _SoundSizeState();
}

class _SoundSizeState extends State<SoundSize> {
  int sound = 100;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
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
        value: sound.toDouble(),
        //min: 120.0,
        max: 220.0,
        onChanged: (double newValue) {
          //슬라이더 이동시, 숫자 변경
          setState(() {
            sound = newValue.round();
          });
        },
      ),
    );
  }
}
