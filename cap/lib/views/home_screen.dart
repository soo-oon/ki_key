import 'package:cap/models/models.dart';
import 'package:cap/views/intro.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  KiImage ad = KiImage(image: "assets/images/메인검색-1.jpg");
  Seller seller = Seller();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IntroScreen()));
            },
            child: Text("메인화면"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("고객주문"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("광고설정"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("관리자페이지"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("일반설정"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("동영상설정"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("동영상광고"),
          ),
        ],
      ),
    );
  }
}
