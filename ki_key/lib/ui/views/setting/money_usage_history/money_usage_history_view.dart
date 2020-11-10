import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/box_widget.dart';

class MoneyUsageHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '포인트사용내역',
          style: TextStyle(
              fontSize: 20.0, color: black, fontWeight: FontWeight.w900),
        ),
      ),
      body: History(),
    );
  }
}

class History extends StatelessWidget {
  //Function<>HistoryInfo> a=[];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              BoxWidget(
                  child: Text(
                    '내역조회기간',
                    textAlign: TextAlign.center,
                  ),
                  width: 90.0,
                  height: 25.0,
                  color: Colors.green),
              SizedBox(width: 20.0,),
              Container(
                width: 80.0,
                height: 35.0,
                child: FlatButton(
                  color: Colors.green,
                  textColor: Colors.black54,
                  //disabledColor: Colors.grey,
                  //disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Text("일주일"),
                  onPressed: () {
                    //showSnackBar("FlatButton with Color & Shape");
                  },
                ),
              ),
              SizedBox(width: 10.0,),
              Container(
                width: 50.0,
                height: 35.0,
                child: FlatButton(
                  color: Colors.green,
                  textColor: Colors.black54,
                  //disabledColor: Colors.grey,
                  //disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Text("1달"),
                  onPressed: () {
                    //showSnackBar("FlatButton with Color & Shape");
                  },
                ),
              ),
              SizedBox(width: 10.0,),
              Container(
                width: 50.0,
                height: 35.0,
                child: FlatButton(
                  color: Colors.green,
                  textColor: Colors.black54,
                  //disabledColor: Colors.grey,
                  //disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Text("3달"),
                  onPressed: () {
                    //showSnackBar("FlatButton with Color & Shape");
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),
          Text('년.월.일'),
          HistoryInfo(),
          HistoryInfo(),
          HistoryInfo(),
        ],
      ),
    );
  }
}

class HistoryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: BoxWidget(
              child: Text(
                '2016315               교촌치킨                              -4500',
                textAlign: TextAlign.center,
              ),
              width: 390.0,
              height: 25.0,
              color: Colors.green),
        ),
        SizedBox(height: 10.0,),
      ],
    );

  }
}

