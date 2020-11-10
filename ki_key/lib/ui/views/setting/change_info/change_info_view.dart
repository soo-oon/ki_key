import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';
import 'package:ki_key/shared/widgets/ui_helpers.dart';

class ChangeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '정보변경',
          style: TextStyle(
              fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
        ),
      ),
      body: ChangeInfoView(),
    );
  }
}

class ChangeInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30.0, left: 20.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '내정보',
                style: TextStyle(
                  fontSize: 20.0,
                  color: black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SaveInfo(
                name: '이름',
              ),
              SaveInfo(
                name: '생년월일',
              ),
              SaveInfo(
                name: '직업',
              ),
              SaveInfo(
                name: '성별',
              ),
              SaveInfo(
                name: '지역',
              ),
              SaveInfo(
                name: '결혼',
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '관심',
                style: TextStyle(
                  fontSize: 20.0,
                  color: black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Attention(),

              Container(
                //margin: EdgeInsets.symmetric(vertical: 80.0),
                padding: EdgeInsets.symmetric(vertical: 80.0),
                //margin: EdgeInsets.(vertical: 80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    StepButton(buttonNumber: 1),
                    StepButton(buttonNumber: 2),
                    StepButton(buttonNumber: 3),
                  ],
                ),
              ),
            ],
          ),

        ),
      ],
    );
  }
}

class SaveInfo extends StatelessWidget {
  final String name;

  SaveInfo({this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(name),
        Container(
          width: 200,
          height: 10,
          child: TextField(
              //onTap vs onChange
              ),
        ),
      ],
    );
  }
}

class Attention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AttentionCheckbox(
              name: '스포츠',
            ),
            AttentionCheckbox(
              name: '요가',
            ),
            AttentionCheckbox(
              name: '피부관리',
            ),
            AttentionCheckbox(
              name: '컴퓨터',
            ),
            AttentionCheckbox(
              name: '게임',
            ),
            AttentionCheckbox(
              name: '정치',
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            AttentionCheckbox(
              name: '스포츠',
            ),
            AttentionCheckbox(
              name: '요가',
            ),
            AttentionCheckbox(
              name: '피부관리',
            ),
            AttentionCheckbox(
              name: '컴퓨터',
            ),
            AttentionCheckbox(
              name: '게임',
            ),
            AttentionCheckbox(
              name: '정치',
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AttentionCheckbox(
              name: '스포츠',
            ),
            AttentionCheckbox(
              name: '요가',
            ),
            AttentionCheckbox(
              name: '피부관리',
            ),
            AttentionCheckbox(
              name: '컴퓨터',
            ),
            AttentionCheckbox(
              name: '게임',
            ),
            AttentionCheckbox(
              name: '정치',
            ),
          ],
        ),
      ],
    );
  }
}

class AttentionCheckbox extends StatefulWidget {
  final String name;
  bool isChecked;

  AttentionCheckbox({this.name, this.isChecked = false});

  @override
  _AttentionCheckboxState createState() => _AttentionCheckboxState();
}

class _AttentionCheckboxState extends State<AttentionCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      child: Row(
        children: <Widget>[
          Text(
            widget.name,
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

class StepButton extends StatelessWidget {
  final int buttonNumber;

  StepButton({this.buttonNumber});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('$buttonNumber Step'),
      color: Colors.yellowAccent,
      onPressed: (){},
    );
  }
}
